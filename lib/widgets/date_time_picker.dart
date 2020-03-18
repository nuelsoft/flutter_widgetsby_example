import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Picker { date, time }
enum Type { material, cupertino }

class DateTimePickers extends StatelessWidget {
  void openPicker(context, Picker p, Type t) {
    var now = DateTime.now();
    if (p == Picker.date) {
      if (t == Type.material)
        showDatePicker(
            context: context,
            initialDate: now,
            firstDate: now,
            lastDate: now.add(Duration(days: 365)));
      else
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return CupertinoDatePicker(
                onDateTimeChanged: (DateTime dt) {
                  //WhatToDO on TimeChange
                },
                mode: CupertinoDatePickerMode.date,
              );
            });
    } else {
      if (t == Type.material) {
        showTimePicker(context: context, initialTime: TimeOfDay.now());
      } else
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return CupertinoDatePicker(
                onDateTimeChanged: (DateTime dt) {
                  //WhatToDO on TimeChange
                },
                mode: CupertinoDatePickerMode.time,
              );
            });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
              onPressed: () {
                openPicker(context, Picker.date, Type.material);
              },
              child: Text("Date Picker (material)")),
          RaisedButton(
            onPressed: () {
              openPicker(context, Picker.date, Type.cupertino);
            },
            child: Text("Date Picker (Cupertino)"),
          ),
          RaisedButton(
              onPressed: () {
                openPicker(context, Picker.time, Type.material);
              },
              child: Text("Time Picker (material)")),
          RaisedButton(
            onPressed: () {
              openPicker(context, Picker.time, Type.cupertino);
            },
            child: Text("Time Picker (Cupertino)"),
          ),
        ],
      ),
    );
  }
}
