
import 'package:flutter/material.dart';
import 'package:getx_mvvm_demo/res/colors/app_colors.dart';

class RoundButton extends StatelessWidget {

  final Color color;
  final Color titleColor;
  final VoidCallback onPressed;
  final String title;
  final double height,width;
  final bool loading;


  const RoundButton(
    {
      super.key,
      required this.onPressed,
      required this.title,
      this.color = AppColors.primaryButtonColor,
      this.titleColor = AppColors.primaryTextColor,
      this.height = 30,
      this.width = 60,
      this.loading = false,
    }

  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: loading ? 
        const CircularProgressIndicator(
          backgroundColor: AppColors.secondaryButtonColor,
        ) : 
        Text(
          title,
          style: TextStyle(
            color: titleColor,
          ),
        ),
      ),
    );
  }
}