

import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_mvvm_demo/res/routes/route_name.dart';
import 'package:getx_mvvm_demo/view_models/controller/user_preferences_controller/user_preferences_controller.dart';

class SplashServices{

  UserPreferencesController  user = UserPreferencesController();
  void isLogIn()async{

    user.getUser().then((value){

      if(value.token == null || value.token!.isEmpty){
        Timer(
          const Duration(seconds: 3), 
          () {
            Get.toNamed(RouteName.logInScreen);
          }
        );
      }
      else{
        Timer(
          const Duration(seconds: 3), 
          () {
            Get.toNamed(RouteName.homeScreen);
          }
        );
      }
    });
  }
}