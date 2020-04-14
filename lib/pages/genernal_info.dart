import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';
import 'package:personal_site/ui/responsive_container.dart';
import 'package:personal_site/ui/social_button.dart';

class GeneralInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
      child: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Container(
                width: 200.0,
                height: 200.0,
                decoration: getBoxDecoration(circle: true),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: avataStyleInner,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Cam Phan',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 3.0,
                    letterSpacing: 2.0),
              ),
              SizedBox(height: 2.0),
              Text(
                'Web Developer',
                style: TextStyle(
                    fontSize: 14.0, color: Colors.black54, letterSpacing: 1.2),
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
              SizedBox(height: 100.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(20.0),
                    height: 46.0,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Download Cv',
                        ),
                        SizedBox(width: 8.0),
                        Icon(Icons.file_download,
                            color: Theme.of(context).primaryColor)
                      ],
                    )),
                    decoration: getBoxDecoration(borderRadius: 20),
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(20.0),
                    height: 46.0,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Contact me',
                        ),
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
      ),
    );
  }
}
