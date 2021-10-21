import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';

class CalanderPage extends StatefulWidget {
  static String tag = 'calander';
  const CalanderPage({Key? key}) : super(key: key);

  @override
  _CalanderPageState createState() => _CalanderPageState();
}

class _CalanderPageState extends State<CalanderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Barber Shop')),
        body: Container(
          color: AppConsts.backgroundColor,
        ));
  }
}
