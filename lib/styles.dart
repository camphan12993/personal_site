import 'package:flutter/material.dart';

Color bg = Color(0xFFe6ebf2);

Color lightShadow = Colors.white.withOpacity(.7);

Color darkShadow = Colors.black.withOpacity(.15);

BoxDecoration avataStyleInner = BoxDecoration(
    color: bg,
    boxShadow: [
      BoxShadow(color: darkShadow, offset: Offset(-3.0, -3.0), blurRadius: 3.0),
      BoxShadow(color: lightShadow, offset: Offset(3.0, 3.0), blurRadius: 3.0)
    ],
    shape: BoxShape.circle,
    image: DecorationImage(
        image: AssetImage("assets/images/logo.png"), fit: BoxFit.cover));

BoxDecoration getBoxDecoration(
        {double borderRadius = 4.0,
        bool inner = false,
        double offset = 3.0,
        double blurRadius = 3.0,
        double spread = 0}) =>
    BoxDecoration(
        color: bg,
        boxShadow: [
          BoxShadow(
              color: inner ? darkShadow : lightShadow,
              offset: Offset(-offset, -offset),
              blurRadius: blurRadius,
              spreadRadius: spread),
          BoxShadow(
              color: inner ? lightShadow : darkShadow,
              offset: Offset(offset, offset),
              blurRadius: blurRadius,
              spreadRadius: spread)
        ],
        borderRadius: BorderRadius.circular(borderRadius));
