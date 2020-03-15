import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: RaisedButton(
        child: Text("Button"),
        onPressed: () {},
      )),
    );
  }
}
