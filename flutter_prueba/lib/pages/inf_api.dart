import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() => runApp(InforApi(post: fetchPost()));

class InforApi extends StatelessWidget {
  final Future<Post> post;

  InforApi({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extraccion api',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.name);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // Por defecto, muestra un loading spinner
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}


Future<Post> fetchPost() async {
  final response = await http.get('https://rickandmortyapi.com/api/character');

  if (response.statusCode == 200) {
    // Si la llamada al servidor fue exitosa, analiza el JSON
    return Post.fromJson(json.decode(response.body));
  } else {
    // Si la llamada no fue exitosa, lanza un error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final String name;
  final int id;
  final String status;
  final String species;

  Post(
      {required this.name,
      required this.id,
      required this.status,
      required this.species});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      name: json['name'],
      id: json['id'],
      status: json['status'],
      species: json['species'],
    );
  }
}