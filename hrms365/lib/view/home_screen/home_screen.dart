
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms365/controller/user_controller/user_controller.dart';
import 'package:hrms365/res/colors/app_colors.dart';
import 'package:hrms365/res/components/custom_app_bar.dart';
import 'package:hrms365/res/components/custom_navigation_bar.dart';
import 'package:hrms365/view/home_screen/widgets/custom_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(appTitle: "Home",),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            CustomContainer(),
            //Obx(() => Text("${userController.user.value.userId}")),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}