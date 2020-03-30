import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('CustomScrollView'),
          ),
        ),
        SliverFixedExtentList(
            itemExtent: 40,
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('$index')))),
      ],
    );
  }
}
