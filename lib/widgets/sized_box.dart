import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Center(
        child: Text("HI"),
      ),
    );
  }
}
