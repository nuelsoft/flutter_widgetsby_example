import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  @override
  _PositionedTransitionExampleState createState() =>
      _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample> with TickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation _curve;
  Animation<RelativeRect> _rect;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat(reverse: true);
    _curve = CurvedAnimation(parent: _controller, curve: Curves.elasticInOut);
    _rect = RelativeRectTween(
            begin: RelativeRect.fromLTRB(0, 30, 50, 0),
            end: RelativeRect.fromLTRB(0, 150, 0, 0)
            )
        .animate(_curve);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PositionedTransition(
          rect: _rect,
          child: Container(
            // height: 50,
            // width: 50,
            decoration: BoxDecoration(
                color: Colors.brown, borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ],
    );
  }
}
