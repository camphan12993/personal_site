import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;

  const SocialButton(this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
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
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.grey[600],
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
