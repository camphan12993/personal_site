import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';
import 'package:personal_site/ui/responsive_container.dart';

class WorkPage extends StatelessWidget {
  Widget getTimelineItem(context, String time) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Container(
        width: 18.0,
        height: 18.0,
        decoration: getBoxDecoration(circle: true, offset: 1, blurRadius: 1),
        child: Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor, shape: BoxShape.circle),
        ),
      ),
      SizedBox(width: 16.0),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              time,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline),
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

  Widget getProjectItem(
      final String project, final String type, final String url) {
    return Container(
      decoration: getBoxDecoration(borderRadius: 16.0),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/sea.jpg')),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0))),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      project,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0),
                    ),
                    SizedBox(height: 4.0),
                    Text(type,
                        style: TextStyle(
                            fontSize: 12.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w200)),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                height: 30.0,
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: bg,
                    boxShadow: [
                      BoxShadow(
                          color: lightShadow,
                          offset: Offset(-3, -3),
                          blurRadius: 4,
                          spreadRadius: 1),
                      BoxShadow(
                          color: darkShadow,
                          offset: Offset(3, 3),
                          blurRadius: 4,
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0))),
                child: Center(
                    child: Text(
                  'Visit',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                )),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
      child: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Working Experiences',
                textAlign: TextAlign.left,
                style: titleStyle,
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
                          blurRadius: 1.0,
                          spread: 0,
                          offset: 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        getTimelineItem(context, '2001-2005'),
                        SizedBox(height: 16.0),
                        getTimelineItem(context, '2005-2010'),
                        SizedBox(height: 16.0),
                        getTimelineItem(context, '2010-2016')
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Projects',
                style: titleStyle,
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: getProjectItem(
                        'Football and life', 'Web UI/UX desgin', ''),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: getProjectItem(
                        'Hospital De Las', 'Web Admin Sytem', ''),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: getProjectItem('Kick Off', 'Mobile Application', ''),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: getProjectItem('New Me', 'Landing Page', ''),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
