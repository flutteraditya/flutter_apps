

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hrms365/controller/user_controller/user_controller.dart';
import 'package:hrms365/model/user_model/users.dart';
import 'package:hrms365/repository/login_repo/login_repo.dart';
import 'package:hrms365/res/api_keys/api_keys.dart';
import 'package:hrms365/res/routes/route_names.dart';
import 'package:hrms365/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{

  final usernameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final checked = false.obs;
  String? cred;

  checkCred(){

    if(usernameController.value.text.isEmail){
      cred = "email";
    }
    else if(usernameController.value.text.isPhoneNumber){
      cred = "mobile_no";
    }
    else{
      cred = "username";
    }
  }


  void postApi()async{

    await checkCred();
    Map mp = {
        cred : usernameController.value.text,
        "password" : passwordController.value.text,
        "device_id" : ""
      };

    //print(mp);
    await LoginRepo.postUser(
      ApiKeys.userLogin,
      mp
    ).then((value)async{
      final userController = Get.put(UserController(),permanent: T);
      userController.user.value = User.fromJson(value);
      SharedPreferences sp = await SharedPreferences.getInstance();
      if(checked.value){
        await sp.setString("user", jsonEncode(userController.user.value.toJson()));
        await sp.setBool("loged", true);
      }
      else{
        await sp.setBool("loged", false);
      }
      Utils.showSnacBar(title: "Success", message: "Login Successful");
      Get.offAllNamed(RouteNames.home);

    }).onError((error, stackTrace){
      //print(error.toString());
      Utils.showErrorSnacBar(title: "error", message: error.toString());
    });
  }

  
}
