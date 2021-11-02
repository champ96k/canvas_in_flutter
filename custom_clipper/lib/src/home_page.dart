import 'package:custom_clipper/src/clipper/my_clipper.dart';
import 'package:custom_clipper/src/widget/primary_button.dart';
import 'package:flutter/material.dart';

import 'quadratic_bezier/my_quadratic_bezier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clipper"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
              title: "Custom Clipper",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyClipper(),
                  ),
                );
              },
            ),
            const SizedBox(height: 26.0),
            PrimaryButton(
              title: "Quadratic Bezier",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const QuadraticBezier(),
                  ),
                );
              },
            ),
            const SizedBox(height: 26.0),
            PrimaryButton(
              title: "Custom Clipper",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
