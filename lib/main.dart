import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/AssetsUser.dart';
import 'package:flutter_app/BaseWidgetPage.dart';
import 'package:flutter_app/DartType.dart';
import 'package:flutter_app/GesturePage.dart';
import 'package:flutter_app/PageRoute/FirstPage.dart';
import 'package:flutter_app/Shopping/Shopping.dart';
import 'package:flutter_app/TutorialHome.dart';
import 'package:flutter_app/WidgetLifeCycle.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(DynamicTheme());

class DynamicTheme extends StatefulWidget {
  @override
  _DynamicThemeState createState() => _DynamicThemeState();
}

class _DynamicThemeState extends State<DynamicTheme> {
  Brightness mBrightness = Brightness.dark;
  String title = "fultter";

  @override
  Widget build(BuildContext context) {
    // var list = List<Product>();
    List list =
        List<Product>.generate(100, (index) => Product(name: "鸡蛋  $index"));

    return MaterialApp(
      title: 'Flutter 数据类型',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.pink,
          // fontFamily: "Mansalva", //全局更换字体
          brightness: mBrightness),
//      home: MyHomePage(title: 'Flutter 数据类型', brightness: mBrightness),
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _pushBaseWidget();
                },
                child: Text(
                  "基础组件",
                ), // 按钮添加文字
                color: Colors.green, // 修改按钮颜色
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: () {
                  _pushTutorialHome();
                },
                child: Text(
                  "系统自带AppBar和几个组件",
                ), // 按钮添加文字
                color: Colors.green, // 修改按钮颜色
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: () {
                  _pushShopping();
                },
                child: Text(
                  "购物清单",
                ), // 按钮添加文字
                color: Colors.green, // 修改按钮颜色
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: _pushPageRoute,
                child: Text("页面路由"),
                color: Colors.green, // 修改按钮颜色
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: _pushGesture,
                child: Text("手势页面"),
                color: Colors.green, // 修改按钮颜色
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: _pushAssetsUse,
                child: Text("使用资源文件"),
                color: Colors.green, // 修改按钮颜色
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: _pushWidgetLifeCycle,
                child: Text("widget生命周期"),
                color: Colors.green, // 修改按钮颜色
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (mBrightness == Brightness.dark) {
                      mBrightness = Brightness.light;
                    } else {
                      mBrightness = Brightness.dark;
                    }
                  });
                },
                child: Text("切换主题"),
                color: Colors.deepOrange,
                textColor: Colors.deepPurple,
              ),
              Text(
                "自定义字体abc",
                style: TextStyle(fontFamily: "Mansalva"),
              )
            ],
          ),
        ),
      ),
//      home: MyScaffold(),
//      home: TutorialHome(),
//      home: ShoppingList(products: list),
//      routes: ,
    );
  }

  _pushShopping() {
    List list =
        List<Product>.generate(100, (index) => Product(name: "鸡蛋  $index"));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return ShoppingList(products: list);
    }));
  }

  _pushWidgetLifeCycle() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return WidgetLifeCycle2();
    }));
  }

  _pushAssetsUse() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return AssetsUsePage();
    }));
  }

  _pushGesture() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return GesturePage();
    }));
  }

  _pushTutorialHome() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return TutorialHome();
    }));
  }

  _pushBaseWidget() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return MyScaffold();
    }));
  }

  _pushPageRoute() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return FirstPage();
    }));
  }
}

class MyApp extends StatelessWidget {
  var mBrightness = Brightness.dark;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var list = List<Product>();
    List list =
        List<Product>.generate(100, (index) => Product(name: "鸡蛋  $index"));

    return MaterialApp(
      title: 'Flutter 数据类型',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.pink,
          brightness: mBrightness),
      home: MyHomePage(title: 'Flutter 数据类型', brightness: mBrightness),

//      home: MyScaffold(),
//      home: TutorialHome(),
//      home: ShoppingList(products: list),
//      routes: ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, brightness}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  Brightness brightness;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                _pushBaseWidget();
              },
              child: Text(
                "基础组件",
              ), // 按钮添加文字
              color: Colors.green, // 修改按钮颜色
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                _pushTutorialHome();
              },
              child: Text(
                "系统自带AppBar和几个组件",
              ), // 按钮添加文字
              color: Colors.green, // 修改按钮颜色
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                _pushShopping();
              },
              child: Text(
                "购物清单",
              ), // 按钮添加文字
              color: Colors.green, // 修改按钮颜色
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: _pushPageRoute,
              child: Text("页面路由"),
              color: Colors.green, // 修改按钮颜色
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: _pushGesture,
              child: Text("手势页面"),
              color: Colors.green, // 修改按钮颜色
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: _pushAssetsUse,
              child: Text("使用资源文件"),
              color: Colors.green, // 修改按钮颜色
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: _pushWidgetLifeCycle,
              child: Text("widget生命周期"),
              color: Colors.green, // 修改按钮颜色
              textColor: Colors.white,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  if (widget.brightness == Brightness.dark) {
                    widget.brightness == Brightness.light;
                  } else {
                    widget.brightness == Brightness.dark;
                  }
                });
              },
              child: Text("切换主题"),
              color: Colors.deepOrange,
              textColor: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }

  _pushShopping() {
    List list =
        List<Product>.generate(100, (index) => Product(name: "鸡蛋  $index"));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return ShoppingList(products: list);
    }));
  }

  _pushWidgetLifeCycle() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return WidgetLifeCycle2();
    }));
  }

  _pushAssetsUse() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return AssetsUsePage();
    }));
  }

  _pushGesture() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return GesturePage();
    }));
  }

  _pushTutorialHome() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return TutorialHome();
    }));
  }

  _pushBaseWidget() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return MyScaffold();
    }));
  }

  _pushPageRoute() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return FirstPage();
    }));
  }

  _ShowToast() {
    Fluttertoast.showToast(
      msg: "你是单身狗谈啥爱情!!!",
      textColor: Colors.green,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      fontSize: 14,
    );
  }
}
