import 'package:flutter/material.dart';

class StreamBuilderExample extends StatelessWidget {
  //the stream async generated to supply counting values
  //to our StreamBuilder
  Stream<int> counter() async* {
    int count = 0;
    while (true) {
      yield count;
      count += 1;
      //waits a second on each iteration
      await Future.delayed(Duration(seconds: 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: StreamBuilder(builder: (context, snapshot) {
          while (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return Text('${snapshot.data}');
        }),
      ),
    );
  }
}
