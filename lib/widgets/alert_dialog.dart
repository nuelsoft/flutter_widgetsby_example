import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    child: AlertDialog(
                      title: Text("ALERT"),
                      content: Text(
                          "You have triggered this innocent Alert. Happy now?"),
                      actions: <Widget>[
                        FlatButton(onPressed: () {}, child: Text("YES")),
                        FlatButton(onPressed: () {}, child: Text("NO"))
                      ],
                    ));
              },
              child: Text("show Alert"))),
    );
  }
}
