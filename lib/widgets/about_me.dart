import 'package:flutter/material.dart';
import 'package:personal_site/widgets/skill.dart';

import '../styles.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: softDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'About Me',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Effect if in up no depend seemed. Ecstatic elegance gay but disposed. We me rent been part what. An concluded sportsman offending so provision mr education. Bed uncommonly his discovered for estimating far.',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14.0),
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            children: <Widget>[
              Text(
                'Date of Birth',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 10.0),
              Text('12/09/1993')
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: <Widget>[
              Text(
                'Address',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 10.0),
              Text('Da Nang, Viet Nam')
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Skills',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.0,
          ),
          Wrap(
            runSpacing: 16.0,
            direction: Axis.horizontal,
            children: <Widget>[
              SkillTag('Play Game'),
              SkillTag('English'),
              SkillTag('Lam chi do'),
              SkillTag('Da bong'),
              SkillTag('Hat xi lo xi la'),
            ],
          )
        ],
      ),
    );
  }
}
