import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
            children: [0, 1, 2, 3, 4, 5]
                .map((e) => ListTile(
                    leading: Icon(Icons.ac_unit), title: Text("item $e")))
                .toList()));
  }
}
