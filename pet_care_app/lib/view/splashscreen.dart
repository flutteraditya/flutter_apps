import 'package:flutter/material.dart';
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
            Image.asset("assets/splashimg.png"),
            const SizedBox(height: 10,),
            const Text(
              "PetGuardian",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(255, 255, 255, 1)
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              "Your Pets' Lifelong Protector",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(255, 255, 255, 1)
              ),
            ),
          ],
        ),
      ),
    );
  }
}