import 'package:flutter/material.dart';

class DismissibleExample extends StatefulWidget {
  @override
  _DismissibleExampleState createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
  final List<String> _items = List.generate(100, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, i) => Dismissible(
              key: Key(_items[i]),
              child: ListTile(
                title: Text(_items[i]),
              ),
              onDismissed: (direction) {
                setState(() {
                  _items.removeAt(i);
                });
              },
            ));
  }
}
