import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_demo/res/colors/app_colors.dart';
import 'package:getx_mvvm_demo/res/routes/route_name.dart';
import 'package:getx_mvvm_demo/view_models/controller/user_preferences_controller/user_preferences_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserPreferencesController user = UserPreferencesController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        title: Text("home".tr),
        actions: [
          IconButton(
            onPressed: (){
              user.removeUser().then((value) => Get.toNamed(RouteName.logInScreen));
            }, 
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
    );
  }
}