import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String _ddv = 'One';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        value: _ddv,
        onChanged: (String dv) {
          setState(() {
            _ddv = dv;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          })
          .toList(),
      ),
    );
  }
}