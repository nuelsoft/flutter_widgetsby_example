import 'package:flutter/material.dart';

class DividerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          physics: BouncingScrollPhysics(),
          children: List.generate(
              50,
              (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("item $index"),
                      ),
                      Divider(
                        thickness: 2,
                      )
                    ],
                  ))),
    );
  }
}
