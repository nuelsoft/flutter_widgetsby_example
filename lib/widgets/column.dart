import 'package:flutter/material.dart';
 
class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("ChildOne"),
        Text("ChildTwo"),
        Text("ChildThree")
      ],
    );
  }
}
