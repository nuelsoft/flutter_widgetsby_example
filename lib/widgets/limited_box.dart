import 'package:flutter/material.dart';

class LimitedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [1, 2, 3, 4, 5, 6, 7]
          .map((_) => Builder(
              builder: (_) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: LimitedBox(
                      maxHeight: 200,
                      child: Container(
                        color: Colors.yellow,
                        child: Text("In a limited box of maxHeight 200"),
                      ),
                    ),
              )))
          .toList(),
    );
  }
}
