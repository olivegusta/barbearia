import 'package:barbearia/utils/common.dart';
import 'package:barbearia/utils/consts.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          bandeiraBeldica(),
        ]),
      ),
    );
  }
}

Widget bandeiraBeldica() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      faixa(cor: AppConsts.black),
      faixa(cor: AppConsts.yellowBasic),
      faixa(cor: AppConsts.redBasic)
    ],
  );
}

Widget faixa({cor}) {
  final double h = (250.0);
  final double l = (120.0);

  return Container(
    height: h,
    width: l,
    color: cor,
  );
}
