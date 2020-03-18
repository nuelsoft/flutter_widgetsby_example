import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

enum Status { single, married, divorced, widowed }

class _RadioExampleState extends State<RadioExample> {
  Status _status = Status.single;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Radio(
            value: Status.single,
            groupValue: _status,
            onChanged: (Status s) {
              setState(() {
                _status = s;
              });
            },
          ),
          title: Text("Single"),
        ),
        ListTile(
          leading: Radio(
            value: Status.married,
            groupValue: _status,
            onChanged: (Status s) {
              setState(() {
                _status = s;
              });
            },
          ),
          title: Text("Married"),
        ),
        ListTile(
          leading: Radio(
            value: Status.divorced,
            groupValue: _status,
            onChanged: (Status s) {
              setState(() {
                _status = s;
              });
            },
          ),
          title: Text("Divorced"),
        ),
        ListTile(
          leading: Radio(
            value: Status.widowed,
            groupValue: _status,
            onChanged: (Status s) {
              setState(() {
                _status = s;
              });
            },
          ),
          title: Text("Widowed"),
        )
      ],
    );
  }
}
