

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_02/controller/navigation_controller.dart';
import 'package:ui_assignment_02/view/home_screen.dart';
import 'package:ui_assignment_02/view/profile_screen.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  //RxInt index = 0.obs;
  final navController = Get.put(NavigationController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavigationBar(
        onTap: (value) {
          navController.index.value = value;
          if(value == 0){
            Get.off(() => const HomeScreen());
          }
          else if(value == 1){

          }
          else if(value == 2){

          }
          else if(value == 3){
            Get.off(() => const ProfileScreen());
          }
        },
        currentIndex: navController.index.value,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home" 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "menu" 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: "notifications" 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "profile" 
          ),
        ],
      ),
    );
  }
}