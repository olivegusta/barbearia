import 'package:barbearia/pages/calander.dart';
import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login';
  const LoginPage({key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
    AppConsts.setHeightSize(MediaQuery.of(context).size.height);
    return Scaffold(
      body: corpo(context),
    );
  }
}

Widget corpo(BuildContext context) {
  return Container(
    color: AppConsts.backgroundColor,
    child: Center(
      child: Container(
        color: AppConsts.offBottom,
        width: setWidth(200.0),
        height: setHeight(80.0),
        child: OutlinedButton.icon(
            onPressed: () {
              print("apertei o botão");
              Navigator.of(context).pushReplacementNamed("/calander");
            },
            icon: Icon(
              Icons.login,
              size: setHeight(10.0),
            ),
            label: Text("Login")),
      ),
    ),
  );
}
