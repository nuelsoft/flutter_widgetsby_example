import 'package:flutter/material.dart';

class ExpansionPanelExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ExpansionPanelList(
      children: [
        ExpansionPanel(
            headerBuilder: (context, i) => Text("alkdfj"), body: Text("Hello"))
      ],
    ));
  }
}
