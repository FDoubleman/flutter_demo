import 'package:flutter/material.dart';

class AssetsUsePage extends StatefulWidget {
  @override
  _AssetsUsePageState createState() => _AssetsUsePageState();
}

class _AssetsUsePageState extends State<AssetsUsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("资源文件使用"),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: 200,
        height: 200,
        child: Image.asset("images/icon_meinv.png"),
      ),
    );
  }
}
