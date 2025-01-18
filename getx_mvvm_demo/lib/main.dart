import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_demo/res/languages/languages.dart';
import 'package:getx_mvvm_demo/res/routes/routes.dart';
import 'package:getx_mvvm_demo/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.appRoutes(),
      translations: Languages(),
      locale: const Locale("en","US"),
      fallbackLocale: const Locale("en","US"),
    );
  }
}

