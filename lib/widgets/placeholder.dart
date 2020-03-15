import 'package:flutter/material.dart';
 
class PlaceholderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 10,
        child: Placeholder(),
      ),
    );
  }
}
