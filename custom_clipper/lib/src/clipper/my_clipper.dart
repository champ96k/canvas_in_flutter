import 'package:flutter/material.dart';

import 'my_custom_clipper.dart';

class MyClipper extends StatelessWidget {
  const MyClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Clipper"),
      ),
      body: Center(
        child: ClipPath(
          clipper: MyCustomClipper(),
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
