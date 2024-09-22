import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hrms365/controller/navigation_controller/navigation_controller.dart';
import 'package:hrms365/res/colors/app_colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController(),permanent: T);
    return Obx(() =>
      BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.appBarColor,
        showSelectedLabels: F,
        showUnselectedLabels: F,
        currentIndex: navController.index.value,
        onTap: (value) {
          navController.index.value = value;
        },
        items: [
          const BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
              color: AppColors.iconColor02,
              //size: 25,
            ),
            activeIcon: Icon(
              Icons.home_outlined,
              color: AppColors.iconColor03,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Feeds",
            icon: Icon(
              Icons.camera_outlined,
              color: AppColors.iconColor02,
              //size: 25,
            ),
            activeIcon: Icon(
              Icons.camera_outlined,
              color: AppColors.iconColor03,
              //size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: "Categories",
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColors.iconColor02,
              ),
              child: const Icon(
                Icons.grid_view_rounded,
                size: 15,
                color: AppColors.whiteColor,
              ),
            ), 
            activeIcon:  Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColors.iconColor03,
              ),
              child: const Icon(
                Icons.grid_view_rounded,
                size: 15,
                color: AppColors.whiteColor,
              ),
            ), 
          ),
          const BottomNavigationBarItem(
            label: "Stats",
            icon: Icon(
              Icons.bar_chart_sharp,
              color: AppColors.iconColor02,
              //size: 25,
            ),
            activeIcon: Icon(
              Icons.bar_chart_sharp,
              color: AppColors.iconColor03,
              //size: 25,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person_outlined,
              color: AppColors.iconColor02,
              //color: (),
              //size: 25,
            ),
            activeIcon: Icon(
              Icons.person_outlined,
              color: AppColors.iconColor03,
              //color: (),
              //size: 25,
            ),
          ),
        ],
      ),
    );
  }
}