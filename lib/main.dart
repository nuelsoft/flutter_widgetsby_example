import 'package:flutter/material.dart';
import 'package:flutterbyexample/app.dart';
import 'package:flutterbyexample/launcher.dart';
import 'package:flutterbyexample/widgets/animated_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Cookbook',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: App());
  }
}
