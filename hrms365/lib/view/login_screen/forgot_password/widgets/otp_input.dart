import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms365/controller/login_controller/forgot_password/otp_controller.dart';
import 'package:hrms365/res/colors/app_colors.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});
  
  @override
  Widget build(BuildContext context) {
    final otpController = Get.put(OtpController());

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(6, (index) {
        return SizedBox(
          width: 40,
          height: 40,
          child: TextFormField(
            controller: otpController.otpControllers[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),
            //textAlign: TextAlign.center,
            cursorHeight: 30,
            cursorWidth: 1,
            cursorColor: AppColors.borderColor01,
            //showCursor: F,
            decoration: InputDecoration(
              counterText: "", // hides character count below the input field
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 0
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.borderColor02,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.borderColor02,
                ),
              ),
            ),
            onChanged: (value) {
              if (value.length == 1 && index < 5) {
                FocusScope.of(context)
                    .nextFocus(); // move to next field automatically
              } else if (value.isEmpty && index > 0) {
                FocusScope.of(context)
                    .previousFocus(); // move to previous field if cleared
              }
            },
          ),
        );
      }),
    );
  }
}