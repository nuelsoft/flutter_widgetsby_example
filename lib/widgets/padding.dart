import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Text("I am enclosed by a padding widget"));
  }
}
