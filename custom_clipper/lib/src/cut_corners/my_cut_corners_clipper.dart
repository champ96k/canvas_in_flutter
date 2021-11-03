import 'package:flutter/material.dart';

import 'my_cut_corners.dart';

class MyCutCorners extends StatelessWidget {
  const MyCutCorners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Clipper"),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyCutCornersClipper(),
          child: Container(
            alignment: Alignment.center,
            height: _size.height * 0.6,
            width: _size.width * 0.8,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
