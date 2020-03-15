import 'package:flutter/material.dart';

class ScaleTransitionExample extends StatefulWidget {
  @override
  _ScaleTransitionExampleState createState() => _ScaleTransitionExampleState();
}

class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
      with TickerProviderStateMixin {
    AnimationController _controller;
    CurvedAnimation _curve;
    Animation<double> _scale;
    bool _isScaled = false;

    @override
    void initState() {
      _controller =
          AnimationController(vsync: this, duration: Duration(milliseconds: 500));
      _curve = CurvedAnimation(parent: _controller, curve: Curves.elasticInOut);
      _scale = Tween(begin: 1.0, end: 1.5).animate(_curve);
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
        child: ScaleTransition(
          scale: _scale,
          child: GestureDetector(
            onTap: (){
              if (_isScaled)
                _controller.forward();
              else
                _controller.reverse();

              _isScaled = !_isScaled;
            },
            child: Container(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Tap to Scale up or down"),
              ),
            ),
          ),
        ),
      );
    }
  }
