import 'package:flutter/material.dart';

class FractionalTranslationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionalTranslation(
      translation: Offset(0.15, 0.55),
      child: Container(height: 300, width: 300, color: Colors.amber, child: Text("Hi"),),
    );
  }
}
