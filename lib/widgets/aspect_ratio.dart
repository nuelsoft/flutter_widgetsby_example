import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/2,
      child: Container(
        color: Colors.black,
        child: Text("Has an aspect Ratio Parent with aspect Ratio of 3/2")
      ),
    );
  }
}