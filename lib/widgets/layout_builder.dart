import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints) =>
            Center(child: Text("Text in a Layout Builder")));
  }
}
