import 'package:flutter/material.dart';

class LongPressableDraggableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LongPressDraggable(
          child: Text("Long Pressable Draggable"),
          feedback: Container(
            height: 0,
            width: 0,
          )),
    );
  }
}
