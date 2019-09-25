import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    List<BottomNavigationBarItem> list = List<BottomNavigationBarItem>();
    list.add(BottomNavigationBarItem(
      title: Text("锻炼"),
      icon: Icon(Icons.accessibility),
    ));
    list.add(BottomNavigationBarItem(
      title: Text("轮椅"),
      icon: Icon(Icons.accessible),
    ));
    // Scaffold是Material中主要的布局组件.
    return Scaffold(
      appBar: AppBar(
        title: Text("系统自带AppBar"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print("分享....");
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "系统自带Scaffold",
              textAlign: TextAlign.center,
            ),
            MyButton(),
            StateButton()
          ],
        ),

//        child: Text(
//          "系统自带Scaffold",
//          textAlign: TextAlign.center,
//        ),
      ),
      // 主页背景
      backgroundColor: Colors.white,
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        items: list,
        currentIndex: _currentIndex,
        onTap: (int currentIndex) {
          _currentIndex = currentIndex;
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("卧槽不要点我...");
        },
        child: Icon(Icons.ac_unit),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("点击....");
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text('agg!!!'),
        ),
      ),
    );
  }
}

class StateButton extends StatefulWidget {
  @override
  _StateButtonState createState() => _StateButtonState();
}

class _StateButtonState extends State<StateButton> {
  int count = 0;

  void _increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("Increment $count"),
          onPressed: _increment,
        ),
        Text("count $count")
      ],
    );
  }
}
