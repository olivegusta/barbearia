import 'package:barbearia/pages/Timeline.dart';
import 'package:barbearia/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:barbearia/pages/agendamento.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/Timeline': (context) => TimelinePage(nome: "voltar para o login"),
        '/agendamento': (context) => agendamentoPage(),

        //LoginPage.tag: (context) => LoginPage(),
      },
    );
  }
}
