import 'package:flutter/material.dart';

class NavigatorExampleONE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => NavigatorExampleTWO()));
          },
          child: Text("Navigate to Page Two"),
        ),
      ),
    );
  }
}

class NavigatorExampleTWO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Go back to Page One")),
    ));
  }
}
