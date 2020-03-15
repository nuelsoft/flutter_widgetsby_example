import 'package:flutter/material.dart';

class IntrinsicWidthExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('We all have'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Same Width'),
            ),
          ])
    );
  }
}