import 'package:flutter/material.dart';
import 'package:songbook/Search.dart';
class Albums extends MaterialPageRoute<String> {
  Albums()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('አልበም'),
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
              title: Text('Album1'),
              subtitle: Text('12'),
            ),
            ListTile(
              title: Text('Album2'),
              subtitle: Text('14'),
            )
          ],
        ),
      ),
    );
  });
}
