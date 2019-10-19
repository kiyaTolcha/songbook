import 'package:flutter/material.dart';
class Artist extends MaterialPageRoute<String> {
  Artist()
      : super(builder: (BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//
//
//      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            backgroundColor: Colors.deepOrange,
            pinned: false,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                  'ዘማሪ',
              ),
              background: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black12,
                      width: 1.0
                    )
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon:Icon(Icons.code),
                onPressed: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(
//                    builder: (context)=>CodeScreen(code: Code.silverListCode),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  });
}