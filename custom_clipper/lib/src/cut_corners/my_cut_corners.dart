import 'package:flutter/material.dart';

class MyCutCornersClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    /// [First] cut point
    var firstControlPoint = Offset(size.width * 0.08, size.height / 7);
    var firstEndPoint = Offset(0.0, size.height / 6);

    /// [second] cut point
    var secondControlPoint =
        Offset(size.width * 0.08, size.height - size.height / 7);
    var secondEndPoint = Offset(0.0, size.height * 0.88);

    /// [Third] cut point
    var thirdControlPoint =
        Offset(size.width * 0.9, size.height - size.height / 7);
    var thirdEndPoint = Offset(size.width, size.height * 0.82);

    /// [Fourth] cut point
    var fourthControlPoint = Offset(size.width * 0.9, size.height / 7);
    var fourthEndPoint = Offset(size.width, size.height * 0.1);

    final path = Path()

      //First cut point
      ..lineTo(0.0, size.height / 9)
      ..quadraticBezierTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEndPoint.dx,
        firstEndPoint.dy,
      )

      //Second cut pont
      ..lineTo(0.0, size.height * 0.82)
      ..quadraticBezierTo(
        secondControlPoint.dx,
        secondControlPoint.dy,
        secondEndPoint.dx,
        secondEndPoint.dy,
      )

      //bottom left
      ..lineTo(0.0, size.height)

      // bottom right
      ..lineTo(size.width, size.height)

      //Third cut
      ..lineTo(size.width, size.height * 0.89)
      ..quadraticBezierTo(
        thirdControlPoint.dx,
        thirdControlPoint.dy,
        thirdEndPoint.dx,
        thirdEndPoint.dy,
      )

      //Fourth cut
      ..lineTo(size.width, size.height / 6)
      ..quadraticBezierTo(
        fourthControlPoint.dx,
        fourthControlPoint.dy,
        fourthEndPoint.dx,
        fourthEndPoint.dy,
      )

      // top right
      ..lineTo(size.width, 0.0)
      ..lineTo(0.0, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
