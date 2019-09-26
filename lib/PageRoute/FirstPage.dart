import 'package:flutter/material.dart';
import 'package:flutter_app/PageRoute/SecondPage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String picUrl =
      "https://pics0.baidu.com/feed/342ac65c1038534343305d41aecace7bcb808836.jpeg?token=0c905110f3444aeba9aa3e4fd530ac8b&s=B52443B116EAE2EA20A059630300E0B3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("第一个页面"),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: <Widget>[
            Image.network(picUrl),
            RaisedButton(
              onPressed: () {
                _push1();
              },
              child: Text("跳转方式 一"),
            ),
            RaisedButton(
              onPressed: () {
                _push2();
              },
              child: Text("跳转方式 二"),
            )
          ],
        ));
  }

  //页面跳转方式一
  _push1() {
//    Navigator.of(context)
//        .push(MaterialPageRoute(builder: (BuildContext context) {
//      return SecondPage("构造传参数");
//    })).then((v) {
//      // 接受参数
//      print("返回值:" + v.toString());
//    });

    // 等同
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage("构造传参数");
    })).then((value) {
      // 接受参数
      print("返回值:" + value.toString());
    });

    // 第三个参数为跳转后的操作，route == null 为销毁当前页面
//    Navigator.pushAndRemoveUntil(context,
//        MaterialPageRoute(builder: (BuildContext context) {
//      return SecondPage("构造传参数");
//    }), (route) => route == null);
  }

  // 页面跳转方式二
  _push2() {}
}
