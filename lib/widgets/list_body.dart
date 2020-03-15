import 'package:flutter/material.dart';

class ListBodyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListBody(
        mainAxis: Axis.vertical,
        children: List.generate(
          5,
          (i) => Builder(
            builder: (_) => ListTile(
              title: Text("item $i"),
            ),
          ),
        ),
      ),
    );
  }
}
