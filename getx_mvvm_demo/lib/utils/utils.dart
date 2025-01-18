


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_demo/res/colors/app_colors.dart';

class Utils {

  static void fieldFocusChange(BuildContext context,FocusNode currentFocus,FocusNode nextFocus){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMassage(String massage){
    Fluttertoast.showToast(
      msg: massage,
      backgroundColor: AppColors.blueColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static snacBar(String title,String massage){
    Get.snackbar(
      title,
      massage,
      snackPosition: SnackPosition.BOTTOM,
    );

  }
}