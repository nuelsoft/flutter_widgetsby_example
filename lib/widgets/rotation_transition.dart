import 'package:flutter/material.dart';

class RotationTransitionExample extends StatefulWidget {
  @override
  _RotationTransitionExampleState createState() =>
      _RotationTransitionExampleState();
}

class _RotationTransitionExampleState extends State<RotationTransitionExample>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _turn;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat();
    _turn = Tween(begin: 0.0, end: 2.0).animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: _turn,
        child: Container(height: 200, width: 200, color: Colors.brown),
      ),
    );
  }
}
