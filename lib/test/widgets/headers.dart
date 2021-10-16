import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 300, color: Color(0xff615AAB));
  }
}

class HeaderRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          )),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color: Color(0xff615AAB),
        child: CustomPaint(
          painter: _HeaderDiagonalPainter(),
        ));
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    // Dibujar
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color: Color(0xff615AAB),
        child: CustomPaint(
          painter: _HeaderPicoPainter(),
        ));
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    // Dibujar
    path.moveTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color: Color(0xff615AAB),
        child: CustomPaint(
          painter: _HeaderCurvoPainter(),
        ));
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    // Dibujar
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.35, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCubico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        // color: Color(0xff615AAB),
        child: CustomPaint(
          painter: _HeaderCubicoPainter(),
        ));
  }
}

class _HeaderCubicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Propiedades
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    // Dibujar
    path.lineTo(0, size.height * 0.25);
    path.cubicTo(size.width * 0.5, size.height * 0.35, size.width * 0.5,
        size.height * 0.15, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
