import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Color color;

  const PrimaryButton({
    Key? key,
    required this.title,
    this.color = Colors.orange,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: _size.width * 0.7,
        height: _size.height * 0.06,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        alignment: Alignment.center,
        child: Text(title),
      ),
    );
  }
}
