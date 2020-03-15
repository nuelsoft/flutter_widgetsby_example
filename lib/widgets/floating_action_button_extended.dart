import 'package:flutter/material.dart';

class ExtendFABExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Hi there")),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("History"),
        icon: Icon(Icons.history),
      ),
    );
  }
}
