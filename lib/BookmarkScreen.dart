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
        new Container(
          decoration: new BoxDecoration(
            color: const Color(0xff7c94b6),
            image: new DecorationImage(
              image: new ExactAssetImage('images/test1.jpg'),
              fit: BoxFit.cover,
            ),
            border: new Border.all(
              color: Colors.black,
              width: 8.0,
            ),
          ),
        )
      ],),
    );
  }
}