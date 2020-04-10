import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;

  const SocialButton(this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: getBoxDecoration(borderRadius: 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
