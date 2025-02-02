
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms365/controller/login_controller/forgot_password/otp_controller.dart';
import 'package:hrms365/res/assets/images/app_images.dart';
import 'package:hrms365/res/colors/app_colors.dart';
import 'package:hrms365/res/components/round_button.dart';
import 'package:hrms365/controller/login_controller/login_controller.dart';
import 'package:hrms365/view/login_screen/widgets/custom_text.dart';
import 'package:hrms365/view/login_screen/widgets/input_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    double height = MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(width: width,height: height*.2,),
                //image
                Image.asset(
                    AppImages.appLogoWt,
                    height: 100,
                  ),
                const SizedBox(height: 20,),
                const Text(
                  "Simplify your Cleverwise access with\nour effortless sign-in process",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 16,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: width,
                //height: 200,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 0.5,
                    color: AppColors.borderColor01
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5,),
                    const Text(
                      "Reset Password",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryTextColor,
                        height: 1.32,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const CustomText(
                      title: "Username",
                    ),
                    const SizedBox(height: 5,),
                    InputField(
                      controller: loginController.usernameController.value, 
                      title: "Enter Mobile/Email/Employee ID"
                    ),
                    const SizedBox(height: 20,),
                    RoundButton(
                      title: "RESET PASSWORD", 
                      width: width,
                      onPressed: (){
                        //
                        //Get.toNamed(RouteNames.otpVarify);
                        Get.put(OtpController()).varifyUser();
                      }
                    ),
                  ],
                ),
              ),
            ),
            // Column(
            //   children: [
            //     const SizedBox(height: 15,),
            //     Container(
            //       height: 55,
            //       width: width,
            //       alignment: Alignment.center,
            //       decoration: BoxDecoration(
            //         color: AppColors.whiteColor,
            //         borderRadius: BorderRadius.circular(25),
            //       ),
            //       child: const Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Icon(
            //             Icons.check_circle_outline,
            //             size: 20,
            //             color: Colors.green,
            //           ),
            //           SizedBox(width: 5,),
            //           Text(
            //             "RESET LINK SEND ON EMAIL/MOBILE",
            //             style: TextStyle(
            //               color: AppColors.primaryButtonColor,
            //               height: 1.25,
            //               fontSize: 12,
            //               fontWeight: FontWeight.w600
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     const SizedBox(height: 30,),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}