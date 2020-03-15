import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: .7,
        child: RaisedButton(onPressed: (){},)
      ),
    );
  }
}