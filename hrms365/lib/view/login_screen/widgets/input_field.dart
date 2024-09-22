
import 'package:flutter/material.dart';
import 'package:hrms365/res/colors/app_colors.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.title
  });

  final TextEditingController controller;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 0,
          ),
          hintText: title,
          hintStyle: const TextStyle(
            color: AppColors.textColor03,
            fontSize: 12,
            height: 1.25,

          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: AppColors.borderColor02,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
        ),
      ),
    );
  }
}