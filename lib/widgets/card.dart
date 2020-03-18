import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("This is a card"),
      )),
    );
  }
}
