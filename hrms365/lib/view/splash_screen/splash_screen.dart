
import 'package:flutter/material.dart';
import 'package:hrms365/res/colors/app_colors.dart';
import 'package:hrms365/res/components/round_button.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Column(
                children: [
                  SizedBox(width: width,height: height*.2,),
                  //image
                  const SizedBox(height: 20,),
                  const Text(
                    "Simplify your Cleverwise access with\nour effortless sign-in process",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.primaryButtonColor,
                      fontSize: 16,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  RoundButton(
                    width: width,
                    title: "GET STARTED", 
                    onPressed: (){

                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 20,
            width: width,
            color: AppColors.primaryColor
          ),
        ],
      ),
    );
  }
}