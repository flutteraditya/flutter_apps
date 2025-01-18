import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_demo/res/colors/app_colors.dart';
import 'package:getx_mvvm_demo/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices serv = SplashServices();

  @override
  void initState() {
    super.initState();
    serv.isLogIn();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text(
          "welcome_back".tr,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}