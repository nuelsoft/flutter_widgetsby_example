import 'package:flutter/material.dart';

class AnimatedSizeExample extends StatefulWidget {
  @override
  _AnimatedSizeExampleState createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample>
    with TickerProviderStateMixin {
  bool _isSmall = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Center(
          child: AnimatedSize(
            duration: Duration(milliseconds: 500),
            vsync: this,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isSmall = !_isSmall;
                });
              },
              child: Container(
                height: _isSmall ? 150 : 250,
                width: _isSmall ? 150 : 250,
                color: Colors.blue,
                child: Center(
                  child: Text("Box"),
                ),
              ),
            ),
          ),
        ),
        Text("Tap Box to Change size")
      ],
    );
  }
}
