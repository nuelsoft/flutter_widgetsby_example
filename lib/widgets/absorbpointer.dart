import 'package:flutter/material.dart';

class AbsorbPointerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: AbsorbPointer(
            child: RaisedButton(
      onPressed: () {},
      child: Text("Try Clicking me"),
    )));
  }
}
