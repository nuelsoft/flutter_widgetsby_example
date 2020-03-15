import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
            child: Container(
          height: 200,
          width: 200,
          color: Colors.black,
        )),
        Center(
            child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        )),
      ],
    );
  }
}
