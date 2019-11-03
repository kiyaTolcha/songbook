import 'package:flutter/material.dart';
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
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('asset/image1.jpg'),
            ),
            backgroundColor: Colors.transparent,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context,index)=>
                Card(
              child: Container(padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 5,),
                    Text("Album"),

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

