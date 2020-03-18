import 'package:flutter/material.dart';

class SimpleDialogExample extends StatefulWidget {
  @override
  _SimpleDialogExampleState createState() => _SimpleDialogExampleState();
}

class _SimpleDialogExampleState extends State<SimpleDialogExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: SimpleDialog(
                      
                      contentPadding: EdgeInsets.all(10),
                      children: <Widget>[
                        Text(
                          "Hey there",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),//Space
                        Text("Hope you are enjoying this app.")
                      ],
                    ));
              },
              child: Text("Show Simple Dialog"))),
    );
  }
}
