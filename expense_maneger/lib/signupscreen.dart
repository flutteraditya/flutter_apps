import 'package:expense_maneger/loginscreen.dart';
import 'package:flutter/material.dart';

class SignUpScren extends StatefulWidget {
  const SignUpScren({super.key});

  @override
  State<SignUpScren> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<SignUpScren> {
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
                "Create your Account",
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
              decoration: InputDecoration(
                labelText: "name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 0,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    style: BorderStyle.none
                  ),
                ),
                focusColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 50,
            width: 280,
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
              decoration: InputDecoration(
                labelText: "username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 0,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    style: BorderStyle.none
                  ),
                ),
                focusColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 50,
            width: 280,
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
              decoration: InputDecoration(
                labelText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 0,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    style: BorderStyle.none
                  ),
                ),
                focusColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 50,
            width: 280,
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
              decoration: InputDecoration(
                labelText: "confirm password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 0,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    style: BorderStyle.none
                  ),
                ),
                focusColor: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(280, 50),
              foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
              backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            child: const Text(
              "Sign Up ",
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
                "Already have an account? ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context)=> const LogInScreen()),
                  );
                },
                child: const Text(
                  "Sign In",
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