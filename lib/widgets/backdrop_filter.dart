import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: List.generate(
            100,
            (index) => Text(
                "So many Texts -- So many Texts -- So Many Texts  -- So many "),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 4),
          child: Center(child: Text("BackdropFilter")),
        )
      ],
    );
  }
}
