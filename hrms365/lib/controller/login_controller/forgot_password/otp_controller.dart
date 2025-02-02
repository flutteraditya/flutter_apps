
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms365/controller/login_controller/login_controller.dart';
import 'package:hrms365/model/otp_model/send_otp.dart';
import 'package:hrms365/repository/login_repo/otp_repo/otp_repo.dart';
import 'package:hrms365/res/api_keys/api_keys.dart';
import 'package:hrms365/res/routes/route_names.dart';
import 'package:hrms365/utils/utils.dart';

class OtpController extends GetxController{

  final otpControllers = List.generate(6, (index) => TextEditingController()).obs;

  SendOtp? otp;
  final loginCon = Get.put(LoginController());

  void varifyUser()async{

    //final loginCon = Get.put(LoginController());

    await loginCon.checkCred();

    Map mp = {
      loginCon.cred : loginCon.usernameController.value.text
    };

    await OtpRepo.varifyUser(ApiKeys.varifyUser, mp).then((value){
      getOtp();
    }).onError((error, stackTrace) {
      Utils.showErrorSnacBar(title: "error", message: error.toString());
    });
  }

  void getOtp()async{
    //final loginCon = Get.put(LoginController());
    Map mp = {
      loginCon.cred : loginCon.usernameController.value.text
    };

    await OtpRepo.postOtp(ApiKeys.sendOtp, mp).then((value){
      otp = SendOtp.fromJson(value);
      Get.toNamed(RouteNames.otpVarify);
      Utils.showSnacBar(title: "success", message: "otp sent successfully!");

    }).onError((error, stackTrace){
      Utils.showErrorSnacBar(title: "error", message: error.toString());
    });
  }

  void varifyOtp()async{
    Map mp = {
      loginCon.cred : loginCon.usernameController.value.text,
      "otp" : otpMerge()
    };
    print(otpMerge());
    await OtpRepo.varifyOtp(ApiKeys.varifyOtp, mp).then((value){
      loginCon.passwordController.value.clear();
      Get.toNamed(RouteNames.changePassword);
      Utils.showSnacBar(title: "success", message: "otp varify successfully!");
    }).onError((error, stackTrace){
      Utils.showErrorSnacBar(title: "error", message: error.toString());
    });
  }

  void changePassword()async{
    Map mp = {
      loginCon.cred : loginCon.usernameController.value.text,
      "password" : loginCon.passwordController.value.text
    };
    print(otpMerge());
    await OtpRepo.changePassword(ApiKeys.changePassword, mp).then((value){
      loginCon.passwordController.value.clear();
      Get.offAllNamed(RouteNames.loginScreen);
      Utils.showSnacBar(title: "success", message: "password change successfully!");
    }).onError((error, stackTrace){
      Utils.showErrorSnacBar(title: "error", message: error.toString());
    });
  }

  String otpMerge(){

    return "${otpControllers[0].text}${otpControllers[1].text}${otpControllers[2].text}${otpControllers[3].text}${otpControllers[4].text}${otpControllers[5].text}";
  }
}