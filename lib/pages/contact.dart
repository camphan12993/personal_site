import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';
import 'package:personal_site/ui/responsive_container.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveContainer(
        child: SingleChildScrollView(
            child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Contact me',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.location_on,
                size: 22.0,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(width: 12.0),
              SizedBox(
                  width: 80.0,
                  child: Text(
                    'Address:',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Expanded(
                child: Text('Da Nang, Viet Nam'),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.phone_iphone,
                size: 22.0,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(width: 12.0),
              SizedBox(
                  width: 80.0,
                  child: Text(
                    'Phone:',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Expanded(
                child: Text('+84 123456789'),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(
                Icons.mail,
                size: 22.0,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(width: 12.0),
              SizedBox(
                  width: 80.0,
                  child: Text(
                    'Email:',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Expanded(
                child: Text('cam.phan12993@gmail.com'),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Text(
            'Use Form',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: getBoxDecoration(inner: true, borderRadius: 26.0),
                child: TextField(
                  style: TextStyle(fontSize: 14.0),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0.0),
                      hintText: 'Subject',
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 12.0)),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                decoration: getBoxDecoration(inner: true, borderRadius: 26.0),
                child: TextField(
                  maxLines: 4,
                  style: TextStyle(fontSize: 14.0),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0.0),
                      hintText: 'Messages',
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 12.0)),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration:
                          getBoxDecoration(inner: true, borderRadius: 26.0),
                      child: TextField(
                        style: TextStyle(fontSize: 14.0),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            hintText: 'Email',
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 12.0)),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      decoration:
                          getBoxDecoration(inner: true, borderRadius: 26.0),
                      child: TextField(
                        style: TextStyle(fontSize: 14.0),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            hintText: 'Your name',
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 12.0)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: getBoxDecoration(borderRadius: 26.0),
                child: Center(
                    child: Text(
                  'Send Message',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                )),
              )
            ],
          )
        ],
      ),
    )));
  }
}
