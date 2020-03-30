import 'package:flutter/material.dart';

class FlowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flow(
        delegate: FlowDel(),
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.access_alarm),
          Icon(Icons.accessible),
          Icon(Icons.zoom_out_map)
        ],
      ),
    );
  }
}

class FlowDel extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    // TODO: implement paintChildren
  }
  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

  @override
  bool shouldRelayout(FlowDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    return super.shouldRelayout(oldDelegate);
  }
}
