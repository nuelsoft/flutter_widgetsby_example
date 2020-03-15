import 'package:flutter/material.dart';

class IndexedStackExample extends StatefulWidget {
  @override
  _IndexedStackExampleState createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IndexedStack(
          index: _selectedIndex,
          children: <Widget>[
          Center(
              child: Container(
            height: 200,
            width: 200,
            color: Colors.black,
          )),
          Center(
              child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          )),
        ]),
        RaisedButton(
            onPressed: () {
              setState(() {
                _selectedIndex = (_selectedIndex == 0) ? 1 : 0;
              });
            },
            child: Text("Press me"))
      ],
    );
  }
}
