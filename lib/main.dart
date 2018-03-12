import 'dart:async';
import 'package:flutter/material.dart';
import './HomeFeedScreen.dart' as HomeFeedScreen;
import './SourceLibraryScreen.dart' as SourceLibraryScreen;
import './CategoriesScreen.dart' as CategoriesScreen;
import './BookmarkScreen.dart' as BookmarkScreen;

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    // TODO: implement createState
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  Future ensureLogin() async {}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.ensureLogin();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display2;
    return new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: null,
            tooltip: 'test',
          ),
          title: new Text('Example title'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        bottomNavigationBar: new Material(
            color: Colors.white,
            child: new TabBar(
                controller: controller,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.orange,
                indicatorColor: Colors.orange,
                tabs: <Tab>[
                  new Tab(
                    icon: new ImageIcon(
                      new AssetImage('images/main_menu_recommend_normal.png'),
                      size: 18.0,
                    ),
                    text: "精选",
                  ),
                  new Tab(
                    icon: new ImageIcon(
                      new AssetImage('images/main_menu_investment_normal.png'),
                      size: 18.0,
                    ),
                    text: '投资',
                  ),
                  new Tab(
                    icon: new ImageIcon(
                      new AssetImage('images/main_menu_my_normal.png'),
                      size: 18.0,
                    ),
                    text: "活动",
                  ),
                  new Tab(
                    icon: new ImageIcon(
                      new AssetImage('images/main_menu_find_normal.png'),
                      size: 18.0,
                    ),
                    text: "账户",
                  ),
                ])),
        body: new TabBarView(controller: controller, children: <Widget>[
          new HomeFeedScreen.HomeFeedScreen(),
          new SourceLibraryScreen.SourceLibraryScreen(),
          new CategoriesScreen.CategoriesScreen(),
          new BookmarkScreen.BookmarksScreen(),
        ]));
  }
}
