import 'package:flutter/material.dart';


//Line Blue
class LineDashedPainterBlue extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint();
    paint.color = Colors.blueAccent[700];
    paint.strokeWidth = 1;
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}