import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/onboardscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const OnBoardScreen(),
          ),
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
        color: const Color.fromRGBO(13, 110, 253, 1),
        alignment: Alignment.center,
        child: Text(
          "Travenor",
          style: GoogleFonts.aclonica(
            fontSize: 34,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
    );
  }
}