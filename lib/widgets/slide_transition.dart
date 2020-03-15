import 'package:flutter/material.dart';

class SlideTransitionExample extends StatefulWidget {
  @override
  _SlideTransitionExampleState createState() => _SlideTransitionExampleState();
}

class _SlideTransitionExampleState extends State<SlideTransitionExample>
    with TickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation _curve;
  Animation<Offset> _offset;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700))
          ..repeat(reverse: true);
    _curve = CurvedAnimation(curve: Curves.easeInSine, parent: _controller);
    _offset =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(3, 0)).animate(_curve);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SlideTransition(
          position: _offset, child: FlutterLogo(size: 200)),
    );
  }
}
