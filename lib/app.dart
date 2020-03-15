import 'package:flutter/material.dart';
import 'package:flutterbyexample/core/register.dart';
import 'package:flutterbyexample/launcher.dart';

class App extends StatelessWidget {
  _goTo(BuildContext context, Widget w, String t, bool hasScaffold) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => (hasScaffold)
            ? w
            : Launcher(
                widget: w,
                title: t,
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter By Example")),
      body: ListView(
          physics: BouncingScrollPhysics(),
          children: Register.widgetList
              .map((i) => ListTile(
                    title: Text(i["title"]),
                    onTap: () => _goTo(
                      context,
                      i["widget"],
                      i["title"],
                      Register.canLaunchSelf.contains(i["title"]),
                    ),
                  ))
              .toList()),
    );
  }
}
