import 'package:flutter/material.dart';

import '../styles.dart';

class SkillTag extends StatelessWidget {
  final String name;

  SkillTag(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      decoration: getBoxDecoration(borderRadius: 20.0, inner: true),
    );
  }
}
