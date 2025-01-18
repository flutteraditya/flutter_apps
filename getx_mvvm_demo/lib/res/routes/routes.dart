

import 'package:get/get.dart';
import 'package:getx_mvvm_demo/res/routes/route_name.dart';
import 'package:getx_mvvm_demo/view/home/home_screen.dart';
import 'package:getx_mvvm_demo/view/login/login_screen.dart';
import 'package:getx_mvvm_demo/view/splash/splash_screen.dart';

class AppRoutes{

  static appRoutes() => [
    GetPage(
      name: RouteName.splashScreen, 
      page: () => const SplashScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 100),
    ),
    GetPage(
      name: RouteName.logInScreen, 
      page: () => const LogInScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 100),
    ),
    GetPage(
      name: RouteName.homeScreen, 
      page: () => const HomeScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 100),
    ),
  ];
}