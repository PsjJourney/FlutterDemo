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
  int _counter = 0;

  List<String> items=<String>['A','B','C','D','E','F','G','H','J'];
  //buildListTile相当于ListView的Adapter
  Widget buildListTile(BuildContext context,String item){
    return new ListTile(
      onTap: () { //这个是item的点击事件
        print(item);
      },
      isThreeLine: true,//子item的是否为三行
      dense: false,
      leading: new CircleAvatar(child: new Text(item),),//左侧首字母图标显示，不显示则传null
      title: new Text('子item的标题'),//子item的标题
      subtitle: new Text('子item的内容'),//子item的内容
      trailing: new Icon(Icons.arrow_right,color: Colors.green,),//显示右侧的箭头，不显示则传null
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[200],
      body: new Column(children: <Widget>[
//        new Image.network('http://a.hiphotos.baidu.com/image/pic/item/314e251f95cad1c847e70404733e6709c93d51b1.jpg'),
      //加载本地的图片的方法还需要研究，这个方法不对
        new Image.asset('../images/test.png')
      ],),
    );*/

    //写个点击计数的功能
    void _increment() {
      setState(() {
        _counter++;
      });
    }

    Iterable<Widget> listTitles=items.map((String item){//将items的内容设置给Adapter
      return buildListTile(context,item);
    });

    return new Scaffold(
      /*body: new ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context,index) {
            final message = messages[index];
            
            return new ListTile(
              leading: new CircleAvatar(
                child: new Text(message.sender[0]),
              ),
              title: new Text(message.sender),
              subtitle: new Text('${message.subject}\n${message.body}'),
              isThreeLine: true,
            );
          }
      )*/
      body: new ListView(
        children: listTitles.toList(),//添加ListView控件
      ),
    );
  }
}

class Message {
  final String sender;
  final String subject;
  final String body;

  Message({this.sender, this.subject, this.body});
}

final messages = [
  new Message(
      sender: 'Flutter Weekly',
      subject: 'Flutter Weekly #5',
      body: 'Check out this week\'s latest Flutter news'
  ),
  new Message(
      sender: 'Drew',
      subject: 'Scuba Photos',
      body: 'Check out the pictures from our last trip'
  ),
  new Message(
      sender: 'Lindsey',
      subject: 'Catch up on Thursday?',
      body: 'Long time no see, let\'s grab coffee!'
  ),
];
