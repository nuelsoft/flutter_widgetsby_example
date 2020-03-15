import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleExampleState createState() =>
      _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState
    extends State<AnimatedDefaultTextStyleExample> {
  bool _isStateONE = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedDefaultTextStyle(
        style: TextStyle(
            color: _isStateONE ? Colors.red : Colors.green,
            fontSize: _isStateONE ? 80 : 50),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isStateONE = !_isStateONE;
            });
          },
          child: Text("HI"),
        ),
        duration: Duration(milliseconds: 500),
      ),
    );
  }
}
