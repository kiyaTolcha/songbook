import 'package:flutter/material.dart';
import 'package:songbook/Album.dart';
import 'package:songbook/Search.dart';

class Artist extends MaterialPageRoute<String> {
  Artist()
      : super(builder: (BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            title: Text('ዘማሪ ስም'),
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
            delegate: SliverChildBuilderDelegate((context,index)=>
                Card(
              child: Container(padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 5,),
                    RaisedButton(
                      child: Text('Tracks'),
                      onPressed: (){
                        Navigator.push(
                          context,Album()
                        );
                      },
                    )

                  ],
                ),
              )
            )),
          )
        ],
      ),
    );
  });
}

