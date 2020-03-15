import 'package:flutter/material.dart';

class Launcher extends StatelessWidget {
  final Widget widget;
  final String title;

  Launcher({@required this.widget, this.title = "Widget"})
      : assert(widget != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title)), body: widget);
  }
}
