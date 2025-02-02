import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_02/controller/login_controller.dart';
import 'package:ui_assignment_02/view/email_send_screen.dart';
import 'package:ui_assignment_02/view/widgets/round_button.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    final logInController = Get.put(LogInController());
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
                "Reset Password",
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
            RoundButton(
              onPressed: (){
                Get.to(const EmailSendScreen());
              }, 
              title: "Send Reset Link",
              width: width,
            ),
            SizedBox(height: width*.05,),

          ],
        ),
      ),
    );
  }
}