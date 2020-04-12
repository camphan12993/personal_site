import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';

class CircularProgress extends StatelessWidget {
  final Widget title;
  final double percent;

  const CircularProgress({Key key, this.title, this.percent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: getBoxDecoration(borderRadius: 100.0),
      child: Stack(
        children: <Widget>[
          Container(
            child: CustomPaint(
              child: Center(),
              painter: ProgressPainter(Theme.of(context).primaryColor, percent),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(48.0),
              decoration: getBoxDecoration(
                  borderRadius: 100.0, spread: -2, blurRadius: 4),
              child: Center(child: title),
            ),
          )
        ],
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final Color color;
  final double percent;

  ProgressPainter(this.color, this.percent);
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) - 26;
    double end = (2 * pi / 100) * percent;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 36
      ..color = color;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        end, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
