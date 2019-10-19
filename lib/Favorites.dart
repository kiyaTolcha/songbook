import 'package:flutter/material.dart';
class Favorites extends MaterialPageRoute<String> {
  Favorites()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('የተወደዱ'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              title: Text('SongTitle'),
              subtitle: Text('Arrtist'),
            ),
            ListTile(
              title: Text('SongTitle'),
              subtitle: Text('Arrtist'),
            )
          ],
        ),
      ),
    );
  });
}
