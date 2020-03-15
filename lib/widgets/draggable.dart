import 'package:flutter/material.dart';

class DraggableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Draggable(
        child: Text("Draggable Text"),
        feedback: Container(
          height: 0,
          width: 0,
        ),
      ),
    );
  }
}
