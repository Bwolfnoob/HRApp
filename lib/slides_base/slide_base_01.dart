import 'package:flutter/material.dart';

class SlideBase01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double getSize() {
      return MediaQuery.of(context).size.width <
              MediaQuery.of(context).size.height
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.height;
    }

    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xff00C5FC),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: CustomPaint(
            painter: ShapesPainter(Color(0xff8EEFFD)),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 0,
          child: CustomPaint(
            painter: ShapesPainter(Colors.white),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        Positioned(
            top: (MediaQuery.of(context).size.height / 2) - getSize() / 8,
            left: MediaQuery.of(context).size.width / 20,
            child: CircleAvatar(
              maxRadius: getSize() / 10,
              backgroundColor: Colors.red,
              child: Text("Logo"),
            )),
      ],
    );
  }
}

class ShapesPainter extends CustomPainter {
  final Color color;

  ShapesPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = color;

    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 4, size.height / 2);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
