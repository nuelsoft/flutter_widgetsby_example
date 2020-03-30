import 'package:flutter/material.dart';

class NotifiactionListenerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
        child: ListView(
            children: List.generate(200, (i) => ListTile(title: Text('$i')))),
        onNotification: (notification) {
          print(notification);
          return true;
        });
  }
}
