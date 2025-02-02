import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_02/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final navController = Get.put(NavigationController());
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}