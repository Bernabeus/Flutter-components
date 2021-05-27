import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          cardR(),
          Divider(),
          cardR(),
          cardR(),
          cardR(),
        ],
      ),
    );
  }
}

class cardR extends StatelessWidget {
  const cardR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://rickandmortyapi.com/api/character/avatar/193.jpeg'),
          ),
          Container(child: Text('No se que poner')),
          Container(
            width: 100,
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Alive',
              style: TextStyle(color: Colors.black),
            ),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          ),
        ],
      )),
    ));
  }
}
