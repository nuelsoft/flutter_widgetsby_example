import 'package:flutter/material.dart';

class PopupMenuButtonExample extends StatefulWidget {
  @override
  _PopupMenuButtonExampleState createState() => _PopupMenuButtonExampleState();
}

enum Option {
  update,
  post,
  delete,
}

class _PopupMenuButtonExampleState extends State<PopupMenuButtonExample> {
  Option _selection = Option.update;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Option>(
      onSelected: (Option option) {
        setState(() {
          _selection = option;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Option>>[
        const PopupMenuItem<Option>(
          value: Option.update,
          child: Text('Make http update request'),
        ),
        const PopupMenuItem<Option>(
          value: Option.post,
          child: Text('Make http post request'),
        ),
        const PopupMenuItem<Option>(
          value: Option.delete,
          child: Text('Make http delete request'),
        ),
      ],
    );
  }
}
