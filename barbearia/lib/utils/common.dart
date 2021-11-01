// arquivo common do projeto

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'consts.dart';

double setWidth(double value) {
  return value * AppConsts.widthPercentage;
}

double setHeight(double value) {
  return value * AppConsts.heightPercentage;
}

// colocar depois do  Widget build(BuildContext context)

// AppConsts.setWidhtSize(MediaQuery.of(context).size.width);
// AppConsts.setHeightSize(MediaQuery.of(context).size.height);

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

Widget botao({texto, action, double maxWidth = 200, bool disabled = false}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: setHeight(5.0)),
    child: Container(
      height: setHeight(40),
      child: RaisedButton(
        onPressed: () => disabled ? Container() : action(),
        padding: EdgeInsets.symmetric(horizontal: setHeight(5.0)),
        color: AppConsts.backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConsts.radiusBotton)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: setWidth(10.0)),
            Text(
              texto.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: disabled ? AppConsts.offText : AppConsts.onText,
                fontSize: AppConsts.fontSize16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget labelGenerico(String string, {required Color textColor}) {
  TextStyle textStyle = (textColor == null)
      ? AppConsts.textLabel
      : AppConsts.textLabel.copyWith(color: textColor);
}
