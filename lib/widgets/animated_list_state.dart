import 'package:flutter/material.dart';

class AnimatedListStateExample extends StatefulWidget {
  @override
  _AnimatedListStateExampleState createState() =>
      _AnimatedListStateExampleState();
}

class _AnimatedListStateExampleState extends State<AnimatedListStateExample> {
  final GlobalKey<AnimatedListState> aListStateKey =
      GlobalKey<AnimatedListState>();

  List<String> items = ["Hi"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blueGrey.shade100,
          height: MediaQuery.of(context).size.height - 150,
          child: AnimatedList(
            physics: BouncingScrollPhysics(),
            key: aListStateKey,
            // initialItemCount: items.length,
            itemBuilder: (context, i, animation) => builder(animation, i),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            RaisedButton.icon(
              icon: Icon(Icons.add),
              label: Text("AddItem"),
              onPressed: () {
                setState(() {
                  items = []
                    ..add("Item ${items.length}")
                    ..addAll(items);
                  aListStateKey.currentState
                      .insertItem(0, duration: Duration(milliseconds: 300));
                });
              },
            ),
            FlatButton.icon(
                icon: Icon(Icons.delete),
                onPressed: () {
                  if (items.length < 1) return;
                  aListStateKey.currentState
                      .removeItem(0, (_, animation) => builder(animation, 0));
                  items.removeAt(0);
                },
                label: Text("RemoveItem"))
          ]),
        )
      ],
    );
  }

  SlideTransition builder(Animation<double> animation, int i) {
    return SlideTransition(
      position: Tween<Offset>(begin: Offset(2, -1), end: Offset.zero)
          .animate(animation),
      child: Card(
              child: ListTile(
          title: Text(items[i]),
        ),
      ),
      // Divider()
      // ],
      // ),
    );
  }
}
