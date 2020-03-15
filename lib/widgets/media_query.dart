import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQueryData(viewPadding: EdgeInsets.all(20)),
        child: Text("Hello world"));
  }
}
