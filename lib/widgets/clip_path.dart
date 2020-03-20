import 'package:flutter/material.dart';

class CLipPathExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipPath(
        clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Container(
          color: Colors.amber,
          child: Icon(Icons.ac_unit, size: 100),
        ),
      ),
    );
  }
}
