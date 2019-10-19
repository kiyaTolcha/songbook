import 'package:flutter/material.dart';
class Search extends MaterialPageRoute<String> {
  Search()
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ፈልግ'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
    );
  });
}