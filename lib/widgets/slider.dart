import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  double _slide = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          min: 0,
          max: 100,
          value: _slide, onChanged: (double s){
          setState(() {
            _slide = s;
          });
        }),
        Text("${_slide.ceil()}")
      ],
    );
  }
}