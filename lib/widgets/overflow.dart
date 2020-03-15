import 'package:flutter/material.dart';

class OverflowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      minHeight: 200,
      child: Container(
        child: Text("Text In a OverflowText"),
      ),
    );
  }
}