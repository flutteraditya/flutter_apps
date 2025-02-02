
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms365/controller/login_controller/forgot_password/otp_controller.dart';
import 'package:hrms365/res/assets/images/app_images.dart';
import 'package:hrms365/res/colors/app_colors.dart';
import 'package:hrms365/res/components/round_button.dart';
import 'package:hrms365/view/login_screen/forgot_password/widgets/otp_input.dart';
import 'package:hrms365/view/login_screen/widgets/custom_text.dart';

class OtpVarifyScreen extends StatefulWidget {
  const OtpVarifyScreen({super.key});

  @override
  State<OtpVarifyScreen> createState() => _OtpVarifyScreenState();
}

class _OtpVarifyScreenState extends State<OtpVarifyScreen> {

  @override
  Widget build(BuildContext context) {
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
                      "Verify Login",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryTextColor,
                        height: 1.32,
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const OtpInput(),
                    const SizedBox(height: 10,),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          //Get.toNamed(RouteNames.resetPassword);
                        },
                        child: const CustomText(
                          title: "Resend OTP",
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    RoundButton(
                      title: "VERIFY OTP", 
                      width: width,
                      onPressed: (){
                        Get.put(OtpController()).varifyOtp();
                      }
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}