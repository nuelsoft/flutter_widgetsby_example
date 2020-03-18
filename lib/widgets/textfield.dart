import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: TextField(
        autofocus: true,
      ),)
    );
  }
}