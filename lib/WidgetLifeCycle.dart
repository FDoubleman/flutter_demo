import 'package:flutter/material.dart';

class WidgetLifeCycle2 extends StatefulWidget {
  // 创建widget调用的第一个方法
  @override
  _WidgetLifeCycle2State createState() => _WidgetLifeCycle2State();
}

class _WidgetLifeCycle2State extends State<WidgetLifeCycle2> {
  int mNum = 0;

  // onCreate 初始化工作
  @override
  void initState() {
    print("----initState---");
    super.initState();
  }

  // 1、所依赖的对象改变时调用
  // 2、所依赖的对象调用 initState()
  @override
  void didUpdateWidget(WidgetLifeCycle2 oldWidget) {
    print("----didUpdateWidget---");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("----dispose---");
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    print("----didChangeDependencies---");
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print("----deactivate---");
    super.deactivate();
  }

  @override
  void reassemble() {
    print("----reassemble---");
    super.reassemble();
  }

  // 会在 didChangeDependencies之后 执行
  @override
  Widget build(BuildContext context) {
    print("----build---");
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text("widget 生命周期"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              setState(() {
                mNum++;
              });
            },
            child: Text("点击$mNum 下"),
          )
        ],
      ),
    );
  }
}
