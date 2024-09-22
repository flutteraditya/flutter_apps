
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms365/res/colors/app_colors.dart';
import 'package:hrms365/res/components/round_button.dart';
import 'package:hrms365/controller/login_controller/login_controller.dart';
import 'package:hrms365/view/login_screen/widgets/custom_text.dart';
import 'package:hrms365/view/login_screen/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                //             Icons.warning_rounded,
                //             size: 20,
                //             color: AppColors.iconColor01
                //           ),
                //           SizedBox(width: 5,),
                //           Text(
                //             "USERNAME/PASSWORD WRONG, CHECK AGAIN",
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 5,),
                      const Text(
                        "Login",
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
                      const SizedBox(height: 15,),
                      const CustomText(
                        title: "Password",
                      ),
                      const SizedBox(height: 5,),
                      InputField(
                        controller: loginController.passwordController.value, 
                        title: "Enter Your Password"
                      ),
                      //const SizedBox(height: 15,),
                      Row(
                        children: [
                          Obx(() =>
                            Checkbox(
                              value: loginController.checked.value, 
                              onChanged: (value){
                                loginController.checked.value = value!;
                              },
                              splashRadius: 10,
                              //checkColor:const Color.fromRGBO(51, 71, 91, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              side: const BorderSide(
                                color: AppColors.borderColor02,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5,),
                          const CustomText(
                            title: "Remember me",
                          ),
                          const Spacer(),
                          const CustomText(
                            title: "Forgot Password?",
                          ),
                        ],
                      ),
                      //const SizedBox(height: 20,),
                      RoundButton(
                        title: "SIGN IN", 
                        width: width,
                        onPressed: (){
                          loginController.postApi();
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