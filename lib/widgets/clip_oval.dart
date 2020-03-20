import 'package:flutter/material.dart';

class ClipOvalExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ClipOval(
          child: Container(
            color: Colors.amber,
            child: Icon(Icons.weekend, size: 100)),
        ),
      ),
    );
  }
}
