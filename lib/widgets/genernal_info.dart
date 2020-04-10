import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';
import 'package:personal_site/widgets/social_button.dart';

class GeneralInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: softDecoration,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Container(
            width: 200.0,
            height: 200.0,
            decoration: softDecorationCircle,
          ),
          SizedBox(height: 20.0),
          Text(
            'Cam Phan',
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
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
          SizedBox(height: 100.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 50.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Download Cv',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8.0),
                    Icon(Icons.file_download, color: Colors.grey[600])
                  ],
                )),
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
                    borderRadius: BorderRadius.circular(8.0)),
              )),
              Expanded(
                  child: Container(
                height: 50.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Contact me',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 8.0),
                    Icon(
                      Icons.phone,
                      color: Colors.grey[600],
                    )
                  ],
                )),
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
                    borderRadius: BorderRadius.circular(8.0)),
              ))
            ],
          )
        ],
      ),
    );
  }
}
