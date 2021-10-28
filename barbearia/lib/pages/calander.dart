import 'package:barbearia/pages/login.dart';
import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';

class CalanderPage extends StatefulWidget {
  final String nome;
  static String tag = 'calander';
  const CalanderPage({required this.nome, Key? key}) : super(key: key);

  @override
  _CalanderPageState createState() => _CalanderPageState();
}

class _CalanderPageState extends State<CalanderPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(title: Text('Barber Shop')),
      body: corpo(),
    );
  }

  Widget corpo() {
    return Container();
  }
}

Widget _botao() {
  return botao(texto: "salvar", action: () => print("Hora de salvar"));
}
