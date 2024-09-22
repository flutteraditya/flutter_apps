import 'package:flutter/material.dart';
import 'package:hrms365/res/colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.title,
    this.height = 50,
    this.width = 300,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final String title;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        backgroundColor: AppColors.primaryButtonColor,
        fixedSize: Size(width,height),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.whiteColor,
          fontSize: 16,
          height: 1.5,

        ),
      ),
    );
  }
}