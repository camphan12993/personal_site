import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';

class CustomProgressBar extends StatelessWidget {
  final int percent;

  const CustomProgressBar({Key key, this.percent = 50}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.0,
      decoration: getBoxDecoration(borderRadius: 20.0),
      child: Container(
        margin: EdgeInsets.all(2.0),
        decoration: getBoxDecoration(
            borderRadius: 20.0, inner: true, offset: 2.0, blurRadius: 1.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: LayoutBuilder(
            builder: (context, constraints) {
              var parentWidth = constraints.maxWidth;
              var width = ((parentWidth * percent) / 100);
              return Container(
                width: width,
                margin: EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20.0)),
              );
            },
          ),
        ),
      ),
    );
  }
}
