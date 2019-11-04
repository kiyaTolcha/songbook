import 'package:flutter/material.dart';
class Search extends MaterialPageRoute<String> {
  Search()
      : super(builder: (BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        title: Text('ፈልግ'),
        centerTitle: true,
        ),
    );
  });
}