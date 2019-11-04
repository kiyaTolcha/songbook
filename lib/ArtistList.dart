import 'package:flutter/material.dart';
import 'package:songbook/Search.dart';

import 'Artist.dart';

class ArtistList extends MaterialPageRoute<String> {
  ArtistList()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('ዘማሪ'),
          centerTitle: true,
          backgroundColor: Theme.of(context).canvasColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).push(Search());
              },
            )
          ]),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                    leading: CircleAvatar(
                      radius:50.0,
                      backgroundImage:AssetImage('asset/image1.jpg'),
                    ),
                    onTap: () =>Navigator.of(context).push(Artist()),
                    title: Text("ዘማሪ ስም"),
                    subtitle: Text("አልበም"),
                ),
                ListTile(
                    leading: CircleAvatar(
                      radius:50.0,
                      backgroundImage:AssetImage('asset/image2.jpg'),
                    ),
                    title: Text("ዘማሪ ስም"),
                    subtitle: Text("አልበም")
                ),

              ],
            ),
          )
        ],
      ),
    );
  });
}
