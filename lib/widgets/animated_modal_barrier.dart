import 'package:flutter/material.dart';

class AnimatedModalBarrierExample extends StatefulWidget {
  @override
  _AnimatedModalBarrierExampleState createState() =>
      _AnimatedModalBarrierExampleState();
}

class _AnimatedModalBarrierExampleState
    extends State<AnimatedModalBarrierExample> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _color;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
          ..repeat(reverse: true);
    _color = ColorTween(begin: Colors.grey.shade900, end: Colors.grey.shade400)
        .animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        AnimatedModalBarrier(
          color: _color,
        ),
        Card(child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text("Card on Modal Barrier"),
        ))
      ],
    );
  }
}
