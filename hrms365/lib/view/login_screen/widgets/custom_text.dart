import 'package:flutter/material.dart';
import 'package:hrms365/res/colors/app_colors.dart';

class CustomText extends StatelessWidget {
  
  const CustomText({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.secondaryTextColor,
        height: 1.72,
      ),
    );
  }
}