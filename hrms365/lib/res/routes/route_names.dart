

import 'package:get/get.dart';
import 'package:hrms365/view/home_screen/home_screen.dart';
import 'package:hrms365/view/login_screen/forgot_password/change_password_screen.dart';
import 'package:hrms365/view/login_screen/forgot_password/otp_varify_screen.dart';
import 'package:hrms365/view/login_screen/forgot_password/reset_password_screen.dart';
import 'package:hrms365/view/login_screen/login_screen.dart';
import 'package:hrms365/view/splash_screen/splash_screen.dart';

class RouteNames{

  static const splashScreen = "/";
  static const loginScreen = "/login";
  static const resetPassword = "/reset_password";
  static const otpVarify = "/otp_varify";
  static const changePassword = "/change_password";
  static const home = "/home";

  static List<GetPage<dynamic>> getPages(){

    return [
      GetPage(name: splashScreen, page: ()=> const SplashScreen()),
      GetPage(name: loginScreen, page: ()=> const LoginScreen()),
      GetPage(name: resetPassword, page: ()=> const ResetPasswordScreen()),
      GetPage(name: otpVarify, page: ()=> const OtpVarifyScreen()),
      GetPage(name: changePassword, page: ()=> const ChangePasswordScreen()),
      GetPage(name: home, page: ()=> const HomeScreen()),
    ];
  }
}