import 'dart:html';

import 'package:barbearia/pages/agendamento.dart';
import 'package:barbearia/pages/login.dart';
import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'dart:js';

final TextEditingController _nameCtrl = TextEditingController();
late DateTime _birthDate;

class TimelinePage extends StatefulWidget {
  final String nome;
  static String tag = 'cadastro';
  const TimelinePage({required this.nome, Key? key}) : super(key: key);

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  void iniState() {
    _birthDate = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Barber_Shop', textAlign: TextAlign.center),
      ),
      body: corpo(),
    );
  }

  Widget corpo() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: setWidth(24), vertical: setHeight(24)),
      color: AppConsts.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: setHeight(50),
          ),
          _formulario(),
          _botoes(),
        ],
      ),
    );
  }
}

Widget _formulario() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      labelGenerico("Nome"),
      _nameContainer(),
      labelGenerico("Email"),
      _nameContainer(),
      // Text("Telefone"),
      labelGenerico("Data de Nascimento"),
    ],
  );
}

Widget _botoes() {
  return Column(
    children: [],
  );
  ;
}

Widget _nameContainer() {
  return TextFormField(
    textCapitalization: TextCapitalization.words,
    textInputAction: TextInputAction.next,
    controller: _nameCtrl,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z.ãÃçÇ& ]"))
    ],
    validator: (value) {
      if (value!.isEmpty) {
        return 'Precisamos de um nome para conta.';
      } else if (value.length < 5) {
        return 'Precisamos de no minimo 5 caracteres.';
      }
      return null;
    },
    onChanged: (value) {
      print(_nameCtrl.text);
    },
  );
}
