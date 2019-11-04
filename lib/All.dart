import 'package:flutter/material.dart';
import 'package:songbook/Search.dart';

class All extends MaterialPageRoute<String> {
  All()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('ሁሉም'),
              centerTitle: true,
              backgroundColor: Theme.of(context).canvasColor,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.of(context).push(Search());
                  },
                ),
              ],
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
