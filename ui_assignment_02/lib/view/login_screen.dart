

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_02/controller/login_controller.dart';
import 'package:ui_assignment_02/view/home_screen.dart';
import 'package:ui_assignment_02/view/reset_screen.dart';
import 'package:ui_assignment_02/view/widgets/round_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  double height = Get.height;
  double width = Get.width;
  final logInController = Get.put(LogInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(width*.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: height*.2,width: width,),
            Image.asset("assets/pradanLogo.png",width: width*.6,),
            const Spacer(),
            SizedBox(
              width: width,
              child: const Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
            ),
            ),
            SizedBox(height: width*.05,),
            TextFormField(
              controller: logInController.userNameController.value,
              decoration: InputDecoration(
                hintText: "Enter your Email Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(height: width*.05,),
            Obx(() => 
              TextFormField(
                controller: logInController.passwordController.value,
                obscureText: logInController.showPass.value,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter your Password",
                  suffixIcon: GestureDetector(
                    onTap: (){
                      logInController.showPass.value = 
                      !logInController.showPass.value;
                    } ,
                    child: logInController.showPass.value ?
                    const Icon(Icons.visibility_off_outlined) :
                    const Icon(Icons.visibility_outlined),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: width*.05,),
            RoundButton(
              onPressed: (){
                Get.off(const HomeScreen());
              }, 
              title: "LOGIN",
              width: width,
            ),
            SizedBox(height: width*.05,),
            GestureDetector(
              onTap: (){
                Get.to(const ResetScreen());
              },
              child: const Text(
                "Reset Password"
              ),
            ),
          ],
        ),
      ),
    );
  }
}