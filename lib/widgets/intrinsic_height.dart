import 'package:flutter/material.dart';

class IntrinsicHeightExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: <Widget>[
          RaisedButton(onPressed: () {}, child: Text("A")),
          RaisedButton(onPressed: () {}, child: Text("B"))
        ],
      ),
    );
  }
}
