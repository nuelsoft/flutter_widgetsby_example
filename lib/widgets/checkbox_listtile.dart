import 'package:flutter/material.dart';

class CheckboxListTileExample extends StatefulWidget {
  @override
  _CheckboxListTileExampleState createState() => _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample> {
  bool _check = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(value: _check, title: Text("Enjoying Flutter?"), onChanged: (bool c){
        setState(() {
          _check = c;
        });
      }),
    );
  }
}