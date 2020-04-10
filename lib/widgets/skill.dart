import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(-2, -2), blurRadius: 2.0, color: Colors.grey[500]),
        BoxShadow(offset: Offset(2, 2), blurRadius: 2.0, color: Colors.white),
      ], color: Colors.grey[300], borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
