import 'package:flutter/material.dart';

class OffStageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Offstage(
            offstage: false,
            child: Text("Hi I am Visible because offstage is false")));
  }
}
