import 'package:flutter/material.dart';

class ResponsiveContainer extends StatelessWidget {
  final Widget child;
  const ResponsiveContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: LayoutBuilder(builder: (context, constraint) {
        return constraint.maxWidth < 600.0
            ? child
            : Align(
                alignment: Alignment.center,
                child: Container(width: 600, child: child));
      }),
    );
  }
}
