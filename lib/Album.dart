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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('አለበም ስም'),
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('asset/image1.jpg'),
            ),
            backgroundColor: Colors.black26,
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
