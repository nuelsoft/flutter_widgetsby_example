import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  FittedBox(
        fit: BoxFit.cover,
        child: Text("Text in a fitted Box"),
      ),
    );
  }
}