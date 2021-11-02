import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}


///
///
///               (0.0, 0.0)                  (width,0.0)
///                   ----------------------------
///                  |                            |
///                  |                            |
///                  |                            |
///                  |                            |
///                  |                            |
///                  |                            |
///                  |                            |
///                   ----------------------------
///              (0.0,height)                  (width,height)
///
///