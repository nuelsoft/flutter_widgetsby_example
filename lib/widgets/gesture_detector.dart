import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  @override
  _GestureDetectorExampleState createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('$count count'),
        GestureDetector(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: Text("Tap me"))
      ],
    );
  }
}
