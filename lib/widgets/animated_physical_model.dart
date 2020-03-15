import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  @override
  _AnimatedPhysicalModelExampleState createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  BoxShape _shape = BoxShape.rectangle;
  double _elevation = 5;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _shape = (_shape == BoxShape.rectangle)
                    ? BoxShape.circle
                    : BoxShape.rectangle;
                _elevation = (_elevation == 5) ? 3 : 5;
                _color = (_color == Colors.green) ? Colors.red : Colors.green;
              });
            },
            child: AnimatedPhysicalModel(
                child: FlutterLogo(size: 200),
                shape: _shape,
                elevation: _elevation,
                color: _color,
                shadowColor: Colors.grey,
                duration: Duration(milliseconds: 500)),
          ),
        ),
        Text("Tap Logo to trigger change")
      ],
    );
  }
}
