import 'dart:html';

import 'package:barbearia/login.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agendamento Barbearia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLogin(title: "Agendamento!!"),
    );
  }
}
