import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms365/view/home_screen/home_screen.dart';
import 'package:hrms365/view/login_screen/login_screen.dart';
import 'package:hrms365/view/login_screen/reset_password_screen.dart';
import 'package:hrms365/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}