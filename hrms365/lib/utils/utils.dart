

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms365/res/colors/app_colors.dart';

class Utils{

  static void showErrorSnacBar({required String title,required String message}){
    Get.snackbar(
      title, 
      message,
      snackPosition: SnackPosition.TOP,
      icon: const Icon(
        Icons.error_outline_outlined,
        color: AppColors.redColor,
      ),
    );
  }
  static void showSnacBar({required String title,required String message}){
    Get.snackbar(
      title, 
      message,
      snackPosition: SnackPosition.BOTTOM,
      icon: const Icon(
        Icons.check_circle_outline_outlined,
        color: AppColors.greenColor,
      ),
    );
  }
}