import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RICK AND MORTY APP'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (150 / 190),
        children: <Widget>[
          cardR(),
          cardR(),
          cardR(),
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
          Container(child: Text('NAME')),
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


