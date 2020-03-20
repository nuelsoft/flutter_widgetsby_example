import 'package:flutter/material.dart';

class OpacityExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Opacity(
        opacity: 0.4,
        child: Container(
          color: Colors.orange,
          height: 200,
          width: 200,
          child: Center(child: Text("Opacity 0.4")),
        ),
      )),
    );
  }
}
