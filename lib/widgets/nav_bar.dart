import 'package:flutter/material.dart';

import '../styles.dart';
import 'nav_button.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          NavButton(Icons.home, 'Home'),
          NavButton(Icons.person, 'About me'),
          NavButton(Icons.work, 'Work'),
          NavButton(Icons.email, 'Contact')
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 0.0),
            blurRadius: 16.0,
            spreadRadius: 0)
      ], color: bg),
    );
  }
}
