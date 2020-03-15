import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Text("I am aligned to the right"),
    );
  }
}