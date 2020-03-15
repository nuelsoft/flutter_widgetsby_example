import 'package:flutter/material.dart';

class SizeTransitionExample extends StatefulWidget {
  @override
  _SizeTransitionExampleState createState() => _SizeTransitionExampleState();
}

class _SizeTransitionExampleState extends State<SizeTransitionExample>  with TickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation _curve;
  Animation<double> _szf;
  bool _isSizedUp = false;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeInExpo);
    _szf = Tween(begin: 0.5, end: 1.0).animate(_curve);
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
      child: SizeTransition(
        sizeFactor: _szf,
        child: GestureDetector(
          onTap: (){
            if (_isSizedUp)
              _controller.forward();
            else
              _controller.reverse();

            _isSizedUp = !_isSizedUp;
          },
          child: Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Tap to size up or down"),
            ),
          ),
        ),
      ),
    );
  }
}
