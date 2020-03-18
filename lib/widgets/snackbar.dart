import 'package:flutter/material.dart';

class SnackbarExample extends StatefulWidget {
  @override
  _SnackbarExampleState createState() => _SnackbarExampleState();
}

class _SnackbarExampleState extends State<SnackbarExample> {
  final GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(title: Text("SnackBar")),
      body: Container(
          child: Center(
              child: RaisedButton(
                  onPressed: () {
                    key.currentState.showSnackBar(SnackBar(
                      content: Text("Hello, this is Snackbar"),
                      duration: Duration(seconds: 2),
                    ));
                  },
                  child: Text("Show Snackbar")))),
    );
  }
}
