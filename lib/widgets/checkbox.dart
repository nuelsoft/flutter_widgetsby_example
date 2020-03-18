import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  @override
  _CheckBoxExampleState createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: Checkbox(
                value: _check,
                onChanged: (v) {
                  setState(() {
                    _check = v;
                  });
                })),
                Text("Tap box to change state")
      ],
    );
  }
}
