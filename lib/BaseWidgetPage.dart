import 'package:flutter/material.dart';

class BaseWidgetPage extends StatefulWidget {
  final String title;

  BaseWidgetPage({this.title});

  @override
  _BaseWidgetPageState createState() => _BaseWidgetPageState();
}

class _BaseWidgetPageState extends State<BaseWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Text("Hello world")],
        ),
      ),
    );
  }
}
