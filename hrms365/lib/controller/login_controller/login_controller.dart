

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hrms365/controller/user_controller/user_controller.dart';
import 'package:hrms365/model/user_model/users.dart';
import 'package:hrms365/repository/login_repo/login_repo.dart';
import 'package:hrms365/res/api_keys/api_keys.dart';
import 'package:hrms365/utils/utils.dart';
import 'package:hrms365/view/home_screen/home_screen.dart';

class LoginController extends GetxController{

  final usernameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final checked = false.obs;
  LoginCred? cred;

  checkCred(){

    if(usernameController.value.text.isEmail){
      cred = LoginCred.email;
    }
    else if(usernameController.value.text.isPhoneNumber){
      cred = LoginCred.mobile;
    }
    else{
      cred = LoginCred.username;
    }
  }


  void postApi()async{

    await checkCred();
    Map mp;
    if(cred == LoginCred.email){
      mp = {
        "email" : usernameController.value.text,
        "password" : passwordController.value.text,
        "device_id" : ""
      };
    }
    else if(cred == LoginCred.mobile){
      mp = {
        "mobile_no" : usernameController.value.text,
        "password" : passwordController.value.text,
        "device_id" : ""
      };
    }
    else{
      mp = {
        "username" : usernameController.value.text,
        "password" : passwordController.value.text,
        "device_id" : ""
      };
    }
    //print(mp);
    await LoginRepo.postUser(
      ApiKeys.userLogin,
      mp
    ).then((value){
      final userController = Get.put(UserController(),permanent: T);
      userController.user.value = User.fromJson(value);
      Utils.showSnacBar(title: "Success", message: "Login Successful");
      Get.to(() => const HomeScreen());

    }).onError((error, stackTrace){
      //print(error.toString());
      Utils.showErrorSnacBar(title: "error", message: error.toString());
    });
  }

  
}

enum LoginCred{
  mobile,
  email,
  username
}