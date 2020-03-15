import 'package:flutter/material.dart';

class SizedOverflowBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedOverflowBox(
      size: Size(200, 300),
      child: Text("I am a text in a SizedOverflowBox "),
    );
  }
}
