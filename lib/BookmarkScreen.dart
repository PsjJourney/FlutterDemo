import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BookmarksScreen extends StatefulWidget {
  BookmarksScreen({Key key}) : super(key: key);

  @override
  _BookmarksScreenState createState() => new _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[200],
      body: new Column(children: <Widget>[
        new Text('dddddddddddddddddddd')
      ],),
    );
  }
}