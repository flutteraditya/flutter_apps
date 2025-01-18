

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_demo/models/login/login_res_model.dart';
import 'package:getx_mvvm_demo/repository/login_repository/login_repository.dart';
import 'package:getx_mvvm_demo/res/routes/route_name.dart';
import 'package:getx_mvvm_demo/utils/utils.dart';
import 'package:getx_mvvm_demo/view_models/controller/user_preferences_controller/user_preferences_controller.dart';

class LogInController extends GetxController{

  final userNameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final userNameFocus = FocusNode().obs;
  final passwordFocus = FocusNode().obs;

  final loading = false.obs;
  final userPreferencesController = UserPreferencesController();
  final _api = LogInRepository();

  void logInApi()async{
    loading.value = true; 
    Map data = {
      "username" : userNameController.value.text,
      "password" : passwordController.value.text
    };

    _api.logInApi(data).then(
      (value){ 
        Utils.snacBar("login".tr, "successful".tr);
        loading.value = false; 
        userPreferencesController.saveUser(LogInResModel.fromJson(value)).then((value) => Get.toNamed(RouteName.homeScreen));

      }
    ).onError(
      (error, stackTrace){ 
      Utils.snacBar("error".tr, error.toString());
      }
    );
  }
}