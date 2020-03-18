import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  @override
  _SwitchExampleState createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Tap or swipe to switch"),
        Center(
          child: Switch(value: _switch, onChanged: (bool s) {
           setState(() {
             _switch = s;
           }); 
          },)
        ),
      ],
    );
  }
}