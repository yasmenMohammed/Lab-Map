import 'dart:math';

import 'package:flutter/material.dart';

class CustomCircle extends CustomPainter {
  final Color lineColor;
  final double width;
  final double percent;

  CustomCircle(
    this.lineColor,
    this.width,
    this.percent,
  );

  @override
  void paint(Canvas canvas, Size size) {
    Paint line = Paint()
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double sweepAngle = 2 * pi * percent;
    canvas.drawCircle(center, radius, line);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), 0,
        sweepAngle, false, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
