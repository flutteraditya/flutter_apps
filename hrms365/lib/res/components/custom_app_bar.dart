

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hrms365/controller/user_controller/user_controller.dart';
import 'package:hrms365/res/colors/app_colors.dart';

class CustomAppBar extends AppBar{
  CustomAppBar({
    super.key,
    required this.appTitle
  });
  final String appTitle;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 55,
      title: Text(
        widget.appTitle,
        style: const TextStyle(
          color: AppColors.appBarTitleColor,
          fontSize: 16,
          fontWeight: FontWeight.w800,
          height: 1.25
        ),
      ),
      centerTitle: T,
      backgroundColor: AppColors.appBarColor,
      leading: IconButton(
        onPressed: (){},
        icon: const Icon(
          Icons.menu,
          //size: 20,
        ),
      ),
      actions: [
        Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(
              width: 2,
              color: AppColors.primaryColor,
              strokeAlign: BorderSide.strokeAlignInside
            ),
            // image: DecorationImage(
            //   image: NetworkImage(
            //     "${userController.user.value.org_logo}"
            //   ),
            // ),
          ),
        ),
      ],
    );
  }
}