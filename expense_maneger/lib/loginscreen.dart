import 'package:expense_maneger/signupscreen.dart';
import 'package:expense_maneger/transactionscreen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 86,width: double.infinity,),
          Image.asset(
            "assets/png/wallet.png",
            height: 58.82,
            width: 69.76,
          ),
          const SizedBox(height: 60,),
          Container(
            height: 24,
            width: 280,
            alignment: Alignment.centerLeft,
            child:
              const Text(
                "Login to your Account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
          ),
          const SizedBox(height: 25,),
          Container(
            height: 50,
            width: 280,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(255, 255, 255, 1),
              border: const Border(),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(0, 3),
                  blurRadius: 10,
                ),
              ],
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "username",
                border: InputBorder.none,
                focusColor: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 50,
            width: 280,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(255, 255, 255, 1),
              border: const Border(),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(0, 3),
                  blurRadius: 10,
                ),
              ],
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                //labelText: "password",
                hintText: "password",
                border:InputBorder.none,
                focusColor: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context)=> const TransactionScreen()),
              );
            }, 
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(280, 50),
              foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
              backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            child: const Text(
              "Sign In ",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don’t have an account? ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context)=> const SignUpScren()),
                  );
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(14, 161, 125, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}