import 'package:flutter/material.dart';

class SquaredHeader extends StatelessWidget {
  const SquaredHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xff615AAB),
    );
  }
}

class RoundedHeader extends StatelessWidget {
  const RoundedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70)
        )
      )
    );
  }
}

class DiagonalHeader extends StatelessWidget {
  const DiagonalHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _DiagonalHeaderPainter(),
      ),
    );
  }
}

class _DiagonalHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();

    paint.color = const Color(0xff635AAF);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class TriangularHeader extends StatelessWidget {
  const TriangularHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _TriangularHeaderPainter(),
      ),
    );
  }
}

class _TriangularHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();

    paint.color = const Color(0xff635AAF);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class PeakHeader extends StatelessWidget {
  const PeakHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _PeakHeaderPainter(),
      ),
    );
  }
}

class _PeakHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();

    paint.color = const Color(0xff635AAF);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class CurvedHeader extends StatelessWidget {
  const CurvedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _CurvedHeaderPainter(),
      ),
    );
  }
}

class _CurvedHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();

    paint.color = const Color(0xff635AAF);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5, size.height *0.10, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height * 0.25);
    
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class WavedHeader extends StatelessWidget {
  const WavedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _WavedHeaderPainter(),
      ),
    );
  }
}

class _WavedHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();

    paint.color = const Color(0xff635AAF);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.40, size.width *0.5, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}

class WavedGradientHeader extends StatelessWidget {
  const WavedGradientHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _WavedGradientHeaderPainter(),
      ),
    );
  }
}

class _WavedGradientHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    const Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA)
      ],
      stops: [
        0.2,
        0.5,
        1.0
      ]
    );

    final Rect rect = Rect.fromCircle(
      center: const Offset(0, 55), radius: 180
    );

    final paint = Paint()..shader = gradient.createShader(rect);

    //paint.color = const Color(0xffff5252);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.lineTo(0, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.40, size.width *0.5, size.height * 0.30);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}