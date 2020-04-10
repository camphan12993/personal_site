import 'package:flutter/material.dart';

Color bg = Colors.grey[300];

Color lightShadow = Colors.white;

Color darkShadow = Colors.grey[600];

BoxDecoration softDecoration = BoxDecoration(
    color: Colors.grey[300],
    boxShadow: [
      BoxShadow(
          color: Colors.white,
          offset: Offset(-4.0, -4.0),
          spreadRadius: 2,
          blurRadius: 8.0),
      BoxShadow(
          color: Colors.grey[400],
          offset: Offset(4.0, 4.0),
          spreadRadius: 2,
          blurRadius: 8.0)
    ],
    borderRadius: BorderRadius.circular(8.0));

BoxDecoration softDecorationCircle = BoxDecoration(
    color: Colors.grey[300],
    boxShadow: [
      BoxShadow(
          color: Colors.white,
          offset: Offset(-4.0, -4.0),
          spreadRadius: 2,
          blurRadius: 8.0),
      BoxShadow(
          color: Colors.grey[400],
          offset: Offset(4.0, 4.0),
          spreadRadius: 2,
          blurRadius: 8.0)
    ],
    shape: BoxShape.circle,
    image: DecorationImage(
        image: AssetImage("assets/images/logo.png"), fit: BoxFit.cover));
