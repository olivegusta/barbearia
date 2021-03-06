//import 'dart:js';

import 'package:barbearia/pages/home.dart';
import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Image.network(
              'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/profile/photos/8401079/original/videozed-logo_600x600_00000.png'),
        ),
        botao(
            texto: 'Entrar',
            action: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyhomePage()));
            }),
        _nameContainer(),

        //  RaisedButton(
        // child: Text("Entrar"),
        //  onPressed: () => Navigator.pushNamed(context, '/home')),
      ],
    );
  }
}

Widget _nameContainer() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      TextField(
          autofocus: true,
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.blue, fontSize: 20),
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
              labelText: "Email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: TextStyle(color: Colors.black),
              suffixIcon: Icon(Icons.email))),
      Padding(padding: EdgeInsets.only(top: 50.0)), //TextField
      TextField(
        autofocus: true,
        obscureText: true,
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.blue, fontSize: 20),
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
            labelText: "Senha",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(color: Colors.black),
            suffixIcon: Icon(Icons.password_rounded)),
        //TextField
      )
    ],
  );
}
