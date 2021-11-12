import 'package:flutter/cupertino.dart';
import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'dart:js';

class agendamentoPage extends StatefulWidget {
  const agendamentoPage({Key? key}) : super(key: key);

  @override
  _agendamentoPageState createState() => _agendamentoPageState();
}

class _agendamentoPageState extends State<agendamentoPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      body: corpo(context),
      //appBar: AppBar(
      // title: Text('Agendamento', textAlign: TextAlign.center),
      //),
    );
  }
}

Widget corpo(BuildContext context) {
  return Container(
    padding:
        EdgeInsets.symmetric(horizontal: setWidth(24), vertical: setHeight(24)),
    color: AppConsts.backgroundColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: setHeight(50),
        ),
        //_formulario(),
        _botoes(),
      ],
    ),
  );
}

Widget _botoes() {
  return Column(
    children: [
      botao(
        texto: "Serviços agendados",
        //action: () => print("Hora de salvar"),
      ),
      botao(
        texto: "voltar",
        //action: () => print("Hora de enviar"),
      ),
    ],
  );
}
