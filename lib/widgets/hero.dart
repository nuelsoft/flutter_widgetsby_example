import 'package:flutter/material.dart';

class HeroExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero")),
      body: Center(
        child: Hero(
          //tag serves as reference for the Navigator Object
          tag: "HEROT",
          child: RaisedButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HeroTwo(),
                    ),
                  ),
              child: Container(
                height: 200,
                width: 200,
                child: Center(
                  child: Text("Click to Hero Out"),
                ),
              )),
        ),
      ),
    );
  }
}

class HeroTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          //reference for the Navigator Object
            tag: "HEROT",
            child: RaisedButton(
              onPressed: () => Navigator.pop(context),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: Text("Click to go back"),
                ),
              ),
            )),
      ),
    );
  }
}
