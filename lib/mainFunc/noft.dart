import 'package:flutter/material.dart';

class Noft extends StatefulWidget {
  @override
  _NoftState createState() => _NoftState();
}

class _NoftState extends State<Noft> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: new Text("我的設定"),
        // ),
        body: Center(
           child: new Text("noft page"),
        ),
      ),
    );
  }
}
