import 'package:flutter/material.dart';

class IgnorePointerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: IgnorePointer(
            child: RaisedButton(
      onPressed: () {},
      child: Text("Try Clicking me"),
    )));
  }
}
