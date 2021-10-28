import 'package:barbearia/pages/login.dart';
import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';

class cadastroPage extends StatefulWidget {
  final String nome;
  static String tag = 'cadastro';
  const cadastroPage({required this.nome, Key? key}) : super(key: key);

  @override
  _cadastroPageState createState() => _cadastroPageState();
}

class _cadastroPageState extends State<cadastroPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro', textAlign: TextAlign.center),
      ),
      body: corpo(),
    );
  }

  Widget corpo() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: setWidth(24), vertical: setHeight(24)),
      //color: AppConsts.backgroundColor,
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
  return Text("oie daqui a pouco tem um formuldario aqui!!!");
}

Widget _botoes() {
  return Column(
    children: [
      botao(
        texto: "salvar",
        action: () => print("Hora de salvar"),
      ),
      //botao(
      //texto: "enviar",
      //action: () => print("Hora de enviar"),
      //),
    ],
  );
}
