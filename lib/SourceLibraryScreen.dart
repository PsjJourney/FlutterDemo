import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SourceLibraryScreen extends StatefulWidget {
  SourceLibraryScreen({Key key}) : super(key: key);

  @override
  _SourceLibraryScreenState createState() => new _SourceLibraryScreenState();
}

class _SourceLibraryScreenState extends State<SourceLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var list = [
      1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[200],
      body: new Column(
        children: <Widget>[
          new Text('这是第二页'),
          new Expanded(
              child: new ListView.builder(
                  itemCount: list.length,
                  padding: new EdgeInsets.all(0.0),
                  itemBuilder: (BuildContext context, int index) {
                    //下面算是自定义listview，不过感觉好乱的布局
                    return new Card(
                      elevation: 1.7,
                      child: new Padding(
                        padding: new EdgeInsets.all(10.0),
                        child: new Row(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.only(left: 4.0),
                              child: new Text('啦啦啦'),
                            ),
                            new Padding(
                              padding: new EdgeInsets.only(left: 24.0),
                              child: new Text('----噜噜噜'),
                            ),
                            new Padding(
                                padding: new EdgeInsets.only(left: 24.0),
                                child: new Column(
                                  children: <Widget>[
                                    new Text('111'),
                                    new Text('222')
                                  ],
                                )),
                            new Padding(
                              padding: new EdgeInsets.only(left: 20.0),
                              child: new Image.asset(
                                'images/test.png',
                                width: 80.0,
                                height: 80.0,
                              ),
                            ),
                            new Padding(
                                padding: new EdgeInsets.only(left: 30.0),
                                child: new Text(
                                  list[index].toString(),
                                  style: new TextStyle(
                                    fontSize: 36.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
