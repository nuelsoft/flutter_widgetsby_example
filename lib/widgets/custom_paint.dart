import 'package:flutter/material.dart';

class CustomPaintExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CustomPaint(
      child: Text("CustomPaint"),
      size: Size(300, 300),
    ));
  }
}
