import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  @override
  _AnimatedOpacityExampleState createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: _opacity,
        child: GestureDetector(
          onTap: () {
            setState(() {
              _opacity = (_opacity == 1) ? 0.5 : 1;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            child: Center(child: Text("Tap to Change Opacity")),
            decoration: BoxDecoration(
              color: Colors.green,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 2)),
          ),
        ),
      ),
    );
  }
}
