import 'package:flutter/material.dart';

class FutureBuilderExample extends StatelessWidget {
  Future<String> appearLater() async {
    await Future.delayed(Duration(seconds: 3));
    return "I was delayed 3 seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: FutureBuilder(
        future: appearLater(),
        builder: (context, snapshot) {
          while (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return Text(snapshot.data);
        },
      ),
    ));
  }
}
