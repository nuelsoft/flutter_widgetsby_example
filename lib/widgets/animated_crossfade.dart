import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  @override
  _AnimatedCrossFadeExampleState createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _showfirstState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: AnimatedCrossFade(
              duration: Duration(milliseconds: 500),
              firstChild: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(color: Colors.yellow),
                child: Center(
                  child: Text("Hello there!"),
                ),
              ),
              secondChild: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text("Enjoying Flutter?"),
                ),
              ),
              crossFadeState: _showfirstState
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ),
          RaisedButton(
              onPressed: () {
                //rebuild UI
                setState(() {
                  _showfirstState = !_showfirstState;
                });
              },
              child: Text("Switch between states"))
        ]);
  }
}
