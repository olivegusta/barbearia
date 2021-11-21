import 'package:flutter/cupertino.dart';
import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:barbearia/pages/Timeline.dart';

class agendamentoPage extends StatefulWidget {
  const agendamentoPage({Key? key, required this.nome}) : super(key: key);
  static String tag = 'cadastro';
  final String nome;
  @override
  _agendamentoPageState createState() => _agendamentoPageState();
}

class _agendamentoPageState extends State<agendamentoPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      body: corpo(),
      appBar: AppBar(
        title: Text('Agendamento', textAlign: TextAlign.center),
      ),
    );
  }
}

Widget corpo() {
  return Column(
    children: [
      Container(
        width: 200,
        height: 30,
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(border: Border.all()),
        child: Text('Agendamento'),
      ),
      botao(
        texto: 'Agendar',
        action: () {},
      ),
      botao(
        texto: 'Serviços agendados',
        action: () {},
      ),
    ],
  );
}
