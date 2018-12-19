import 'package:flutter/material.dart';
import 'index/index.dart';

void main() => runApp(new plantRobot());

class plantRobot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "plant robot",
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }
}
