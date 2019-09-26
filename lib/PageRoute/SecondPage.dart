import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String title;

  SecondPage(this.title);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String picUrl =
      "https://pics5.baidu.com/feed/024f78f0f736afc35eee105f8ac095c1b6451203.jpeg?token=92164f3853ac3acf1b8200febfcd6922&s=3EC96884979B07C41E6419BA03008001";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第二个页面"),
          leading: GestureDetector(
            onTap: () {
              _pop1();
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: <Widget>[
            Image.network(picUrl),
            RaisedButton(
              onPressed: () {
                _pop1();
              },
              child: Text("页面关闭 一"),
            ),
            RaisedButton(
              onPressed: () {
                _pop2();
              },
              child: Text("页面关闭 二"),
            )
          ],
        ));
  }

  //页面关闭1
  _pop1() {
    Navigator.of(context).pop("我是返回值");
  }

  // 页面关闭2
  _pop2() {}
}
