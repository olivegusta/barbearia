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
      debugShowCheckedModeBanner: false,
      title: 'Login ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/Timeline': (context) => TimelinePage(
              nome: '',
            ),
        '/agendamento': (context) => agendamentoPage(
              nome: '',
            ),

        //LoginPage.tag: (context) => LoginPage(),
      },
    );
  }
}
