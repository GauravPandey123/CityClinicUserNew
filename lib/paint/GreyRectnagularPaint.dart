import 'package:flutter/cupertino.dart';

class GreyRectnagularPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0x888992)
      ..style = PaintingStyle.stroke;
    //a rectangle
    canvas.drawRect(Offset(100, 100) & Size(200, 100), paint1);
  }

  bool shouldRepaint(CustomPainter oldDelegate) => true;



}