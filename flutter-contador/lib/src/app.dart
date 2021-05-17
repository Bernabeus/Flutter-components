import 'package:contador/pages/contador_page.dart';
// import 'package:contador/pages/home-page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
