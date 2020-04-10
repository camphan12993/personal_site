import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';

class WorkPage extends StatelessWidget {
  Widget getTimelineItem(context, String text) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Container(
        width: 18.0,
        height: 18.0,
        decoration: getBoxDecoration(borderRadius: 20.0),
        child: Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
      SizedBox(width: 20.0),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8.0),
            Text(
              'Effect if in up no depend seemed. Ecstatic elegance gay but disposed. We me rent been part what. An concluded sportsman offending so provision mr education. Bed uncommonly his discovered for estimating far.',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
            )
          ],
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Working Experiences',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Positioned(
                  left: 8.0,
                  bottom: 0,
                  top: 0,
                  child: Container(
                    width: 4.0,
                    decoration: getBoxDecoration(
                        inner: true,
                        borderRadius: 3.0,
                        blurRadius: 2.0,
                        offset: 2),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      getTimelineItem(context, '2001-2005'),
                      SizedBox(height: 20.0),
                      getTimelineItem(context, '2005-2010'),
                      SizedBox(height: 20.0),
                      getTimelineItem(context, '2010-2016')
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
