import 'package:flutter/material.dart';

enum Status { on, off }


class DragTargetExample extends StatefulWidget {
  @override
  _DragTargetExampleState createState() => _DragTargetExampleState();
}

class _DragTargetExampleState extends State<DragTargetExample> {
    Status status = Status.off;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        curve: Curves.easeInOutSine,
        duration: Duration(milliseconds: 500),
        color: status == Status.on ? Colors.white : Colors.black87,
        child: Center(
            child: FractionallySizedBox(
          heightFactor: .3,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffcccccc),
                backgroundBlendMode: BlendMode.multiply,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xaacccccc), Color(0xaaffffff)]
                ),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(color: Color(0xffdddddd), spreadRadius: 4),
                  BoxShadow(color: Color(0xffeeeeee), spreadRadius: 3),
                ]),
            padding: EdgeInsets.all(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                DragTarget(
                  builder: (context, _, __) {
                    return status == Status.on
                        ? Draggable(
                            axis: Axis.vertical,
                            child: Icon(Icons.blur_circular, size: 70),
                            feedback: Icon(Icons.blur_circular, size: 70),
                            childWhenDragging: Container(
                              height: 0,
                              width: 0,
                            ),
                          )
                        : Container(height: 70, width: 70);
                  },
                  onAccept: (d) {
                    setState(() {
                      status = Status.on;
                    });
                  },
                ),
                DragTarget(
                  builder: (context, _, __) {
                    return status == Status.off
                        ? Draggable(
                            axis: Axis.vertical,
                            child: Icon(Icons.blur_circular, size: 70),
                            feedback: Icon(Icons.blur_circular, size: 70),
                            childWhenDragging: Container(
                              height: 0,
                              width: 0,
                            ),
                          )
                        : Container(height: 70, width: 70);
                  },
                  onAccept: (d) {
                    setState(() {
                      status = Status.off;
                    });
                  },
                )
              ],
            ),
          ),
        )),
      );
  }
}