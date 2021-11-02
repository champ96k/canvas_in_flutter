import 'package:flutter/material.dart';

class MyCustomQuadraticBezier extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30);

    var secondControlPoint =
        Offset(size.width - size.width / 3.4, size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);

    final path = Path()
      ..lineTo(0.0, size.height - 20)

      //
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy)

      //
      ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)

      //
      ..lineTo(size.width, size.height - 40)
      ..lineTo(size.width, 0.0)
      ..close();

    //
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
