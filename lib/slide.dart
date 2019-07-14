import 'package:flutter/material.dart';
import 'package:hr_app_os/slides_base/slide_base_01.dart';
import 'package:hr_app_os/slides_base/slide_base_02.dart';

class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  double getSize() {
    return MediaQuery.of(context).size.width <
            MediaQuery.of(context).size.height
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SlideBase02(),
          Center(
            child: Text(
              "Hello World",
              style: TextStyle(color: Colors.white, fontSize: getSize() / 8),
            ),
          )
        ],
      ),
    );
  }
}
