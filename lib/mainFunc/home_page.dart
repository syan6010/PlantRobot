import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: new Text("我的設定"),
        //   backgroundColor: Colors.pink,
        // ),
        body: Center(
           child: new Text("setting page"),
        ),
      ),
    );
  }
}
