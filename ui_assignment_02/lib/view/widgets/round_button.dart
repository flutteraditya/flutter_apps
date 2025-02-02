

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.color = const Color.fromARGB(255, 0,109,76),
    this.titleColor = Colors.white,
    this.height = 50,
    this.width = 300,
  });
  final VoidCallback onPressed;
  final String title;
  final double height,width;
  final Color color;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),

      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: titleColor,
          ),
        ),
      ),
    );
  }
}