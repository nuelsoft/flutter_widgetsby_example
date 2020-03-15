import 'package:flutter/material.dart';

class ThemeExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Theme(
      child: Text("Hi, I am in blue"),
      data:
          ThemeData(textTheme: TextTheme(body1: TextStyle(color: Colors.blue))),
    ));
  }
}
