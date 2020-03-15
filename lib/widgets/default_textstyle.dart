import 'package:flutter/material.dart';
 
class DefaultTextStyleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.red),
      child: Center(
        child: Text("Hi. I inherited my styles"),
      ),
    );
  }
}
