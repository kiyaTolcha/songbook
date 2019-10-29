import 'package:flutter/material.dart';
import 'package:songbook/Search.dart';
class Genres extends MaterialPageRoute<String> {
  Genres()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('አይነት'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).push(Search());
              },
            )
          ]
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              title: Text('Solo'),
              subtitle: Text('20'),
            ),
            ListTile(
              title: Text('Blues'),
              subtitle: Text('12'),
            ),
            ListTile(
              title:Text('Jass'),
              subtitle: Text('14'),
            )
          ],
        ),
      ),
    );
  });
}