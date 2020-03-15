import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
        children: [
      1,
      2,
      3,
    ].map((i) {
      return Container(
        child: Center(child: Text("Page $i")),
      );
    }).toList());
  }
}
