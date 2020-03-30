import 'package:flutter/material.dart';

class ImagefromNetworkExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.network("https://images.unsplash.com/photo-1518495973542-4542c06a5843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"));
  }
}