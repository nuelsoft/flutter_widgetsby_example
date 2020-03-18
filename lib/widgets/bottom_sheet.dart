import 'package:flutter/material.dart';

class BottomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(child: Text("show BottomSheet"), onPressed: () {
          showBottomSheet(context: context, builder: (context) => BottomSheet(
            onClosing: (){},
            builder: (context) => Container(
              color: Colors.yellow,
              height: 300,
              child: Center(child: Text("This is Flutter"))),
          ));
        }),
      ),
    );
  }
}
