import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_site/styles.dart';

class CircularProgress extends StatelessWidget {
  final Widget title;
  final double percent;

  const CircularProgress({Key key, this.title, this.percent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var width = min(constraint.minWidth, constraint.maxHeight);
        return Align(
          alignment: Alignment.center,
          child: Container(
            width: width - 60.0,
            height: width - 60.0,
            decoration: getBoxDecoration(circle: true),
            child: Stack(
              children: <Widget>[
                Container(
                  child: CustomPaint(
                    child: Center(),
                    painter: ProgressPainter(
                        Theme.of(context).primaryColor, percent),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(40.0),
                    decoration: getBoxDecoration(
                        circle: true, spread: -2, blurRadius: 4),
                    child: Center(child: title),
                  ),
                )
              ],
            ),
          ),
        );
      },
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
    double radius = min(size.width / 2, size.height / 2) - 20;
    double end = (2 * pi / 100) * percent;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20
      ..color = color;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        end, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
