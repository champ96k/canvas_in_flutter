import 'package:flutter/material.dart';

import 'my_custom_quadratic_bezier.dart';

class QuadraticBezier extends StatelessWidget {
  const QuadraticBezier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quadratic Bezier"),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyCustomQuadraticBezier(),
          child: Container(
            alignment: Alignment.center,
            height: _size.height * 0.4,
            width: _size.width * 0.8,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}
