import 'package:flutter/material.dart';
 
class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("ChildOne"),
        Text("ChildTwo"),
        Text("ChildThree")
      ],
    );
  }
}
