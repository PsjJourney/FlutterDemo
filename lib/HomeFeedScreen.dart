import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFeedScreen extends StatefulWidget {
  HomeFeedScreen({Key key}) : super(key: key);

  @override
  _HomeFeedScreenState createState() => new _HomeFeedScreenState();
}

class _HomeFeedScreenState extends State<HomeFeedScreen> {
  _HomeFeedScreenState({this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Banner(message: null, location: null),
    );
  }
}

