import 'package:flutter/material.dart';

class RefreshIndicatorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child:
            Container(child: Center(child: Text("Refresh Indicator Example"))),
        onRefresh: () {
          return; // what to do
        });
  }
}
