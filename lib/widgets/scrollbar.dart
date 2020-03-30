import 'package:flutter/material.dart';

class ScrollBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: ListView(
      children: List.generate(
        100,
        (index) => ListTile(title: Text('#$index text')),
      ),
    ));
  }
}
