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
        width: 300.0,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                image: NetworkImage(
                    'https://rickandmortyapi.com/api/character/avatar/193.jpeg'),
              ),
              Container(
                  padding: EdgeInsets.all(10.0), child: Text('No se que poner'))
            ],
          )),
        ));
  }
}
