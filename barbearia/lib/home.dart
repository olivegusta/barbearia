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
            //Parte da cabeça do robô
            // Container(color: Colors.black, width: 50.0, height: 50.0),

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

            //Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            //children: [
            //Container(color: Colors.black, width: 50.0, height: 50.0),
            //SizedBox(
            // width: 20,
            //),
            //Container(color: Colors.red, width: 40.0, height: 50.0),
          ],
        ),
        //],
      ),
      //),
    );
  }
}
