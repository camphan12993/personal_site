import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';

class NavButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const NavButton(this.icon, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      height: 65.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: softDecoration,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.grey[600],
              size: 26,
            ),
            SizedBox(height: 6.0),
            Text(
              title,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
}
