import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final Widget tittle;

  MyApp({this.tittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.0,
      // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: const EdgeInsets.only(left: 8, top: 20, right: 8, bottom: 0),
      //
      //margin: const EdgeInsets.all(10),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      // Row 是水平方向的线性布局（linear layout）
      child: Row(
        // 列表项的类型是 <Widget>
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: null, // 如果这个设置为null，按钮将被禁用
            tooltip: "不要再按啦 ...", // 当用户长时间按下按钮时，将显示此文本
          ),
          Expanded(
            child: tittle,
          ),
          // 类似于权重
//          Expanded(
//            child: tittle,
//          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.deepPurple,
            tooltip: "search",
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyApp(
            tittle: Text(
              "AppBar",
//              style: Theme.of(context).primaryTextTheme.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Center(
              child: Text("hello world!"),
            ),
          )
        ],
      ),
    );
  }
}

class BaseWidgetPage extends StatefulWidget {
  final String title;

  BaseWidgetPage({this.title});

  @override
  _BaseWidgetPageState createState() => _BaseWidgetPageState();
}

class _BaseWidgetPageState extends State<BaseWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: const EdgeInsets.symmetric(horizontal: 10),
      //
      decoration: BoxDecoration(color: Colors.green),
      // Row 是水平方向的线性布局（linear layout）
      child: Row(
        // 列表项的类型是 <Widget>
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: null, // 如果这个设置为null，按钮将被禁用
            tooltip: "不要再按啦 ...", // 当用户长时间按下按钮时，将显示此文本
          ),
          Expanded(
            child: Text("卧槽"),
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.deepPurple,
            tooltip: "search",
          )
        ],
      ),
    );
  }
}
