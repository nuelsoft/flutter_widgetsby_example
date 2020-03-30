import 'package:flutter/material.dart';

class ImagefromAssetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/images/tree.jpg")
    );
  }
}