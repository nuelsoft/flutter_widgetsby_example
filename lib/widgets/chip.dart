import 'package:flutter/material.dart';

class ChipEXample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Chip(
      label: Text("Chip"),
      avatar: Icon(Icons.ac_unit),
      
      deleteIcon: Icon(Icons.close),
      onDeleted: () => print("deleted"),
    )));
  }
}
