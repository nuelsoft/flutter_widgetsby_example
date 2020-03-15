import 'package:flutter/material.dart';

class DecoratedBoxTransitionExample extends StatefulWidget {
  @override
  _DecoratedBoxTransitionExampleState createState() =>
      _DecoratedBoxTransitionExampleState();
}

class _DecoratedBoxTransitionExampleState
    extends State<DecoratedBoxTransitionExample> with TickerProviderStateMixin {
  AnimationController _controller;
  DecorationTween _decoration;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true);
    _decoration = DecorationTween(
      begin: BoxDecoration(
          borderRadius: BorderRadius.circular(0), color: Colors.white),
      end: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBoxTransition(
          decoration: _decoration.animate(_controller),
          child: FlutterLogo(
            size: 150,
          )),
    );
  }
}
