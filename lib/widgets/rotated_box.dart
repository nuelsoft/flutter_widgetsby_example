import 'package:flutter/material.dart';

class RotatedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotatedBox(
        quarterTurns: 2,
        child: Container(
          child: Center(child: Text("RotatedBox")),
          height: 300,
          width: 300,
          color: Colors.brown,
        ),
      ),
    );
  }
}
