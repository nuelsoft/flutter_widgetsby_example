import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        children: [
          TableRow(
            children: List.generate(
              4,
              (i) => Builder(
                builder: (_) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("item $i"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
