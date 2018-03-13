import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //导入网络请求相关的包
import 'dart:convert';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen({Key key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => new _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  /**
   * 网络请求
   */
  var httpclient = createHttpClient(); //获取http对象
  var url = 'https://outer.jinkebuy.com/bklc-user/user/queryActivityInfoList';
  var response;
  var list = new List();
  var effeStartTimeList = new List();
  var effeEndTimeList = new List();
  var timeList = new List();
  List ll;

  Future _postData() async {
    response =
        await httpclient.read(url); //发送网络请求，read()表示读取返回的结果，get()表示不读取返回的结果
    Map data = JSON.decode(response)['data'];
    ll = data['activityList'];
    print(ll[0]['activityImgUrl']);
    if (!mounted) return;
    setState(() {
      list = ll;
    });
    list.forEach((i) {
      effeStartTimeList.add(i['effeStartTime']);
      effeEndTimeList.add(i['effeEndTime']);
      timeList.add('有效期：' + i['effeStartTime'] + '-' + i['effeEndTime']);
      print(timeList);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._postData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[200],
      body: new Column(
        children: <Widget>[
          new Expanded(
              child: new ListView.builder(
                  itemCount: list.length,
                  padding: new EdgeInsets.all(8.0),
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      elevation: 0.0,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Container(
                            child: new Image.network(
                              list[index]['activityImgUrl'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.only(
                                top: 4.0, left: 4.0, bottom: 4.0),
                            child: new Text(
                              list[index]['activityContent'],
                              style: new TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          new Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, bottom: 4.0),
                            child: new Text(
                              timeList[index],
                              style: new TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
