import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';
import 'package:personal_site/ui/responsive_container.dart';
import 'package:personal_site/ui/social_button.dart';

class GeneralInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Container(
              width: 200.0,
              height: 200.0,
              decoration: getBoxDecoration(borderRadius: 100),
              child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: avataStyleInner,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Cam Phan',
              style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lobster'),
            ),
            SizedBox(height: 6.0),
            Text(
              'Web Developer',
              style: TextStyle(fontSize: 16.0, color: Colors.black54),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialButton(Icons.code),
                SocialButton(Icons.cloud),
                SocialButton(Icons.airplay),
                SocialButton(Icons.face),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 46.0,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Download Cv',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8.0),
                      Icon(Icons.file_download,
                          color: Theme.of(context).primaryColor)
                    ],
                  )),
                  decoration: getBoxDecoration(borderRadius: 20),
                )),
                SizedBox(width: 20.0),
                Expanded(
                    child: Container(
                  height: 46.0,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Contact me',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 8.0),
                      Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  )),
                  decoration: getBoxDecoration(borderRadius: 20),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
