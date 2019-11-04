import 'package:flutter/material.dart';
import 'package:songbook/Search.dart';
class Album extends MaterialPageRoute<String> {
  Album()
      : super(builder: (BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(

            title: Text('አለበም ስም'),
            expandedHeight: 200.0,
              backgroundColor: Theme.of(context).canvasColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('asset/image1.jpg'),
            ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.of(context).push(Search());
                  },
                )
              ]
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index)=>
            Card(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    Text('Track 1')
                  ],
                ),
              ),
            )) ,
          )
        ],
      )
    );
  });
}
