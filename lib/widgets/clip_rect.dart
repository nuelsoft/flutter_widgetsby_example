import 'package:flutter/material.dart';

class ClipRectExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ClipRect(
      child: Container(
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("ClipRect"),
          )),
    ));
  }
}
