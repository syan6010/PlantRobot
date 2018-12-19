import 'package:flutter/material.dart';

class Reco extends StatefulWidget {
  @override
  _RecoState createState() => _RecoState();
}

class _RecoState extends State<Reco> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: new Text("我的設定"),
        //   backgroundColor: Colors.pink,
        // ),
        body: Center(
           child: new Text("setting reco"),
        ),
      ),
    );
  }
}
