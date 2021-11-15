//import 'package:barbearia/pages/calander.dart';
import 'package:barbearia/pages/agendamento.dart';
import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:barbearia/pages/Timeline.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'cadastro';
  const LoginPage({key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(body: corpo());
  }

  Widget corpo() {
    return Container(
      color: AppConsts.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Image.asset('lib/images/logo.png', width: setWidth(200))),
          Container(
            width: setWidth(200.0),
            child: botao(
                texto: "enter",
                action: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => TimelinePage(
                        nome: '',
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
