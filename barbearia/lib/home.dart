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
            Container(color: Colors.black, width: 50.0, height: 50.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.purple,
                  width: 50.0,
                  height: 50.0,
                ),

                Container(
                  color: Colors.indigo,
                  width: 100.0,
                  height: 100.0,
                ),

                Container(
                  color: Colors.purple,
                  width: 50.0,
                  height: 50.0,
                ),

                //const Text(
                //  'APERTE PARA AGENDAR UM SERVIÇO!!!',
                //),
                //Text(
                //'$_counter',
                //style: Theme.of(context).textTheme.headline4,
                //),
              ],
            ),
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //onPressed: _incrementCounter,
      //tooltip: 'Increment',
      //child: const Icon(Icons.add),
      //),
    );
  }
}
