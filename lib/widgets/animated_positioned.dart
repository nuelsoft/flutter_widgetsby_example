import 'package:flutter/material.dart';

class AnimatedPostionedExample extends StatefulWidget {
  @override
  _AnimatedPostionedExampleState createState() =>
      _AnimatedPostionedExampleState();
}

class _AnimatedPostionedExampleState extends State<AnimatedPostionedExample> {
  double _top = 10;
  double _left = 10;
  double _right = 10;
  double _bottom = 10;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topCenter,
              child: Text("Tap Logo to change Position")),
        ),
        AnimatedPositioned(
          child: GestureDetector(
              onTap: () {
                setState(() {
                  _top = (_top == 10) ? 150 : 10;
                  _left = (_left == 10) ? 150 : 10;
                  _right = (_right == 10) ? 0 : 10;
                  _bottom = (_bottom == 10) ? 0 : 10;
                });
              },
              child: FlutterLogo(size: 200)),
          duration: Duration(milliseconds: 500),
          top: _top,
          left: _left,
          right: _right,
          bottom: _bottom,
        ),
      ],
    );
    // Text("Tap Logo to trigger position change");
  }
}
