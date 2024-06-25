import 'package:flutter/material.dart';

Color bgBlue = Color.fromARGB(255, 4, 21, 69);
Color white = Colors.white;
Color green = const Color.fromRGBO(83, 185, 171, 1);
Color whitet150 = const Color.fromARGB(150, 255, 255, 255);

final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xff0B16CEA), Color(0xffFF5E69), Color(0xffFF8A56), Color(0xffFFA84B)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));