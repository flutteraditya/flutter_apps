
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms365/controller/user_controller/user_controller.dart';
import 'package:hrms365/res/components/custom_app_bar.dart';
import 'package:hrms365/res/components/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appTitle: "Home",),
      body: Obx(() => Text(
          "username: ${userController.user.toString()}"
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}