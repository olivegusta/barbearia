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
    return Container(
      //color: AppConsts.backgroundColor,
      child: Center(
        child: Container(
          color: AppConsts.offBottom,
          width: setWidth(200.0),
          height: setHeight(80.0),
          child: OutlinedButton.icon(
              onPressed: () {
                print("voltar para o login");
                Navigator.of(context).pushReplacementNamed("/login");
              },
              icon: Icon(
                Icons.logout,
                size: setHeight(10.0),
              ),
              label: Text(widget.nome)),
        ),
      ),
    );
  }
}
