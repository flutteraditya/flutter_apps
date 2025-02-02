
import 'dart:convert';

import 'package:get/get.dart';
import 'package:hrms365/controller/user_controller/user_controller.dart';
import 'package:hrms365/model/user_model/users.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController {

  static Future isLoged()async{
    SharedPreferences sp = await SharedPreferences.getInstance();

    if(sp.getBool("loged") ?? false){
      UserController userController = Get.put(UserController());

      Map<String,dynamic> mp = json.decode(sp.getString("user")!);

      userController.user = User.fromJson(mp);
      return true;
    }
    return false;
  }
}