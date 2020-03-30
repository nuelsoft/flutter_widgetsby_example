import 'package:flutter/material.dart';

class SingleChildScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
                children: List.generate(
              50,
              (i) => ListTile(
                title: Text('$i'),
              ),
            ).toList()),
          ),
        );
      },
    );
  }
}
