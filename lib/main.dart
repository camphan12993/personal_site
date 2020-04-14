import 'package:flutter/material.dart';
import 'package:personal_site/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CV',
      theme: ThemeData(
        primaryColor: Color(0xFFff6363),
        fontFamily: 'SourceSansPro',
      ),
      home: HomePage(),
    );
  }
}
