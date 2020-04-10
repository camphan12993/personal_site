import 'package:flutter/material.dart';
import 'package:personal_site/ui/progress_bar.dart';
import 'package:personal_site/ui/skill_tag.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
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
              height: 30.0,
            ),
            Text(
              'Skills',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Text('Team Work'),
                  width: 80.0,
                ),
                SizedBox(width: 10.0),
                Expanded(
                    child: CustomProgressBar(
                  percent: 40,
                ))
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Text('English'),
                  width: 80.0,
                ),
                SizedBox(width: 10.0),
                Expanded(
                    child: CustomProgressBar(
                  percent: 70,
                ))
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Text('Soft Skills'),
                  width: 80.0,
                ),
                SizedBox(width: 10.0),
                Expanded(
                    child: CustomProgressBar(
                  percent: 50,
                ))
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  child: Text('Analyzing'),
                  width: 80.0,
                ),
                SizedBox(width: 10.0),
                Expanded(
                    child: CustomProgressBar(
                  percent: 80,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
