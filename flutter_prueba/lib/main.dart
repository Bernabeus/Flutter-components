import 'package:flutter/material.dart';
import 'package:flutter_prueba/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RICK AND MORTY App',
      initialRoute: 'cards',
      routes: appRoutes,
    );
  }
}
