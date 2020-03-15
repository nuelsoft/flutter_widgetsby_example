import 'package:flutter/material.dart';

class ContrainedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Card(child: Text('Hello World!')),
    );
  }
}
