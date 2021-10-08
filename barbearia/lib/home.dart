import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  //void _incrementCounter() {
  //  setState(() {
  //    _counter++;
  //  });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.black,
                  width: 300.0,
                  height: 300.0,
                  child: Center(
                    child: Container(
                      color: Colors.white,
                      width: 200.0,
                      height: 200.0,
                      child: Center(child: Text("Login")),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        //],
      ),
      //),
    );
  }
}
