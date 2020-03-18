import 'package:flutter/material.dart';

class SwitchListTileExample extends StatefulWidget {
  @override
  _SwitchListTileExampleState createState() => _SwitchListTileExampleState();
}

class _SwitchListTileExampleState extends State<SwitchListTileExample> {
  bool _switch = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SwitchListTile(
        title: Text("Love Flutter"),
          value: _switch,
          onChanged: (bool s) {
            setState(() {
              _switch = s;
            });
          }),
    );
  }
}
