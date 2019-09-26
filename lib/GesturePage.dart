import 'package:flutter/material.dart';
import 'package:fluttertoast/generated/i18n.dart' as prefix0;

class GesturePage extends StatefulWidget {
  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  String printString = "";
  double moveX = 0;
  double moveY = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "手势操作",
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("手势监听"),
          leading: GestureDetector(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: FractionallySizedBox(
          widthFactor: 1,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      _pandStr("单击");
                    },
                    onDoubleTap: () {
                      _pandStr("双击");
                    },
                    onLongPress: () {
                      _pandStr("长按");
                    },
                    onTapCancel: () {
                      _pandStr("取消");
                    },
                    onTapDown: (TapDownDetails details) {
                      _pandStr("按下");
                    },
                    onTapUp: (TapUpDetails details) {
                      _pandStr("抬起");
                    },
                    child: Container(
                      padding: EdgeInsets.all(70),
                      decoration: BoxDecoration(color: Colors.deepOrange),
                      child: Text(
                        "点击",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                  Text(printString),
                ],
              ),
              Positioned(
                left: moveX,
                top: moveY,
                child: GestureDetector(
                  onPanUpdate: (DragUpdateDetails details) {
                    _domove(details);
                  },
                  child: Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(36)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _pandStr(String msg) {
    setState(() {
      printString += "$msg 、";
    });
  }

  void _domove(DragUpdateDetails details) {
    setState(() {
      moveY += details.delta.dy;
      moveX += details.delta.dx;
    });
  }
}
