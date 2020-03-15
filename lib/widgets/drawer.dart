import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [0, 1, 2, 3]
              .map((i) => ListTile(
                    title: Text("Item $i"),
                    leading: Icon(Icons.insert_emoticon),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
