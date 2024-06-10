import 'package:flutter/material.dart';

import '../constantes.dart';


Text TextWidget(
    {String text = "", Color? color, double size = 25, bool bold = true,bool decoration=false}) {
  return Text(
    text,
    style: TextStyle(
      color: color ?? ecomPrymaryColor,
      fontSize: size,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      decoration:decoration? TextDecoration.lineThrough:TextDecoration.none
    ),
  );
}

Container labelWidget({required String text}) {
  return Container(
      alignment: Alignment.centerLeft,
      height: 50,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextWidget(text: text,size:20),);
}
