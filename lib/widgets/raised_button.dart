import 'package:flutter/material.dart';

class RaisedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: RaisedButton(
        onPressed: () {
          //actionToBePerformed()
        },
        child: Text("Click me"),
      )),
    );
  }
}
