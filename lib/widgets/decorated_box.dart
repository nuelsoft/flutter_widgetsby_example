import 'package:flutter/material.dart';

class DecoratedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        child: Container(height: 300, width: 300),
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3))),
    );
  }
}
