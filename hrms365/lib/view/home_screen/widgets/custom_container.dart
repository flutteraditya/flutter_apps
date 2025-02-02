import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms365/res/colors/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.primaryButtonColor),
      child: Column(
        children: [
          Text(
            "16 SEPTEMBER 2024, MONDAY".toUpperCase(),
            style: GoogleFonts.roboto(
              color: AppColors.whiteColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              height: 2,
            ),
          ),
          Text(
            "ExcellentMinds HQ, Baner, Pune",
            style: GoogleFonts.roboto(
              color: AppColors.primaryColor,
              fontSize: 10,
              fontWeight: FontWeight.normal,
              height: 1.5,
            ),
          ),
          const Row(
            children: [
              Icon(
                Icons.fingerprint_outlined,
                size: 80,
                color: AppColors.sliderColor,
              ),
            ],
          ),
          Container(
            height: 25,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.whiteColor,
            ),
            child: Container(
              height: 25,
              width: width*.5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.sliderColor,
              ),
              child: const Text(
                "",
              ),
            ),
          ),
        ],
      ),
    );
  }
}