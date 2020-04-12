import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';

class NavButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isActive;

  const NavButton({this.icon, this.title, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 40,
              height: 40.0,
              decoration: isActive
                  ? getBoxDecoration(
                      borderRadius: 12, inner: true, spread: -1, blurRadius: 1)
                  : getBoxDecoration(
                      borderRadius: 12, offset: 3, spread: 0, blurRadius: 4),
              child: Center(
                child: Icon(
                  icon,
                  color: Theme.of(context).primaryColor,
                  size: 22,
                ),
              ),
            ),
            SizedBox(height: 10.0),
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
