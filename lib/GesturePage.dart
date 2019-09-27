import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      // Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。
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
        // 一个widget，它把它的子项放在可用空间的一小部分。关于布局算法的更多细节，见RenderFractionallySizedOverflowBox
        body: FractionallySizedBox(
          widthFactor: 1,
          // 可以允许其子widget简单的堆叠在一起
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
                    // 一个拥有绘制、定位、调整大小的 widget。
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
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(36)),
                      child: Text(
                        "拖拉机",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )),
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
