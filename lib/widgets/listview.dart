import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        20,
        (i) => Builder(
          builder: (_) => ListTile(
            title: Text("item $i"),
          ),
        ),
      ),
    );
  }
}
