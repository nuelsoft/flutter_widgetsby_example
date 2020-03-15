import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 100;
  double _height = 100;

  Color _color = Color.fromRGBO(150, 255, 255, 1);

  double _borderRadius = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: _height,
              width: _width,
              curve: Curves.easeInOutSine,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(_borderRadius),
                  color: _color),
            ),
          ),
          RaisedButton(
              onPressed: () {
                //rebuild UI
                setState(() {
                  //Random() object from dart's math library
                  _width = Random().nextInt(300).toDouble();
                  _height = Random().nextInt(300).toDouble();

                  _borderRadius = Random().nextInt(100).toDouble();

                  _color = Color.fromRGBO(Random().nextInt(255),
                      Random().nextInt(255), Random().nextInt(255), 1);
                });
              },
              child: Text("Change Box"))
        ]);
  }
}
