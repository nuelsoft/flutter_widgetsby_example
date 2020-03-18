import 'package:flutter/material.dart';

class RadioListTileExample extends StatefulWidget {
  @override
  _RadioListTileExampleState createState() => _RadioListTileExampleState();
}

enum Status { single, married, divorced, widowed }

class _RadioListTileExampleState extends State<RadioListTileExample> {
  Status _status = Status.married;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RadioListTile(
          value: Status.single,
          groupValue: _status,
          onChanged: (Status s) {
            setState(() {
              _status = s;
            });
          },
          title: Text("Single"),
        ),
        RadioListTile(
          value: Status.married,
          groupValue: _status,
          onChanged: (Status s) {
            setState(() {
              _status = s;
            });
          },
          title: Text("Married"),
        ),
        RadioListTile(
          value: Status.divorced,
          groupValue: _status,
          onChanged: (Status s) {
            setState(() {
              _status = s;
            });
          },
          title: Text("Divorced"),
        ),
        RadioListTile(
          value: Status.widowed,
          groupValue: _status,
          onChanged: (Status s) {
            setState(() {
              _status = s;
            });
          },
          title: Text("Widowed"),
        )
      ],
    );
  }
}
