import 'package:expense_maneger/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context)=> const LogInScreen(),
            ),
          );
        },
        // child: ListView(
        //   //shrinkWrap: true,
        //   children: [
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Container(
                  height: 144,
                  width: 144,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(144),
                    color: const Color.fromRGBO(234, 238, 235, 1),
                  ),
                  child: Image.asset(
                    "assets/png/wallet.png",
                    height: 58.82,
                    width: 69.76,
                  ),
                ),
                const Spacer(),
                const Text(
                  "Expense Manager",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 100,width: double.infinity,)
              ],
            ),
        //   ],
        // ),
      ),
    );
  }
}