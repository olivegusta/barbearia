import 'dart:js';

import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:barbearia/utils/common.dart';

class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Seu email:",
              style: AppConsts.styleTitle,
            ),
            Text("Sua senha: ", style: AppConsts.styleTitle),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: setWidth(148)),
              child: botao(
                  action: () => print("Apertei"),
                  texto: "ENTRAR",
                  maxWidth: setWidth(200),
                  disabled: false),
            ),
          ],
        ),
      ),
    );
  }
}
