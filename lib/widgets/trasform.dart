import 'package:flutter/material.dart';

class TransformExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Transform(
        transform: Matrix4.skew(0.5, 3.0),
        child: Container(
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                "Transfrom",
                style: TextStyle(fontSize: 30),
              ),
            )),
      ),
    ));
  }
}
