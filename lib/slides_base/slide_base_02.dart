import 'package:flutter/material.dart';

class SlideBase02 extends StatelessWidget {
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
            top: getSize() / -3,
            left: MediaQuery.of(context).size.width / 4,
            child: CircleAvatar(
              backgroundColor: Color(0xff00ADE8),
              maxRadius: getSize() / 4,
            )),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Color(0xff00ADE8),
              width: getSize() / 6,
              height: getSize() / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Color(0xff00C5FC),
                    height: getSize() / 20,
                  ),
                  Container(
                    color: Color(0xff00C5FC),
                    height: getSize() / 20,
                  ),
                  Container(
                    color: Color(0xff00C5FC),
                    height: getSize() / 20,
                  ),
                  Container(
                    color: Color(0xff00C5FC),
                    height: getSize() / 20,
                  ),
                ],
              ),
            )),
        Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 2,
            child: Icon(
              Icons.map,
              size: 200,
              color: Color(0xff00ADE8),
            )),
        Positioned(
          top: 10,
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
          top: -30,
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
            right: MediaQuery.of(context).size.width / 20,
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
    path.lineTo(size.width, size.height);
    path.lineTo(size.width - (size.width / 4), size.height / 2);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
