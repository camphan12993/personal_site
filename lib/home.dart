import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';
import 'package:personal_site/widgets/about_me.dart';
import 'package:personal_site/widgets/genernal_info.dart';
import 'package:personal_site/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: bg,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.only(top: 85.0),
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[GeneralInfo(), AboutMe()],
                )),
              ),
            ),
            NavBar(),
          ],
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisSize: MainAxisSize.min,
        //   children: <Widget>[
        //     Expanded(
        //         child: Container(
        //       decoration: softDecoration,
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[NavBar(), Expanded(child: GeneralInfo())],
        //       ),
        //     )),
        //   ],
        // ),
      ),
    ));
  }
}
