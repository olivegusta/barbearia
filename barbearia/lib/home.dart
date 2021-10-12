import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [bandeiraBeldica()]),
      ),
    );
  }
}

Widget bandeiraBeldica() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      faixa(Colors.black),
      faixa(Colors.yellow),
      faixa(Colors.redAccent)
    ],
  );
}

Widget faixa(Color cor) {
  final double h = 200;
  final double l = 100;

  return Container(
    height: h,
    width: l,
    color: cor,
  );
}
