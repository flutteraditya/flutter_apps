import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/login.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      (){
        Navigator.pushReplacement(
          context, 
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          )
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(245, 146, 69, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/splashimg.svg"),
            const SizedBox(height: 10,),
            Text(
              "PetGuardian",
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(255, 255, 255, 1)
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              "Your Pets' Lifelong Protector",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(255, 255, 255, 1)
              ),
            ),
          ],
        ),
      ),
    );
  }
}