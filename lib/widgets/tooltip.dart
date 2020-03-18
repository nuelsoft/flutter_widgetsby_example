import 'package:flutter/material.dart';

class TooltipExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Tooltip(
      message: "Hi, I am a tooltip",
      child: Text("LongTap me"),
    )));
  }
}
