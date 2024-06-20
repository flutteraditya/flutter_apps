import 'package:flutter/material.dart';
import 'package:pet_care_app/view/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity,),
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
              const SizedBox(height: 20,),
              Image.asset(
                "assets/loginimg.png",
                height: 194,
                width: 184,
              ),
              const SizedBox(height: 20,),
              Container(
                height: 20,
                width: 330,
                alignment: Alignment.topLeft,
                child: const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(194, 195, 204, 1)
                  ),
                ),
              ),
              SizedBox(
                height: 36,
                width: 330,
                child: TextField(
                  cursorColor: const Color.fromRGBO(245, 146, 69, 1),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "PetGuardian@gmail.com",
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(194, 195, 204, 1)
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 0
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(250, 200, 162, 1)
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(250, 200, 162, 1)
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 20,
                width: 330,
                alignment: Alignment.topLeft,
                child: const Text(
                  "Label",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(194, 195, 204, 1)
                  ),
                ),
              ),
              SizedBox(
                height: 36,
                width: 330,
                child: TextField(
                  cursorColor: const Color.fromRGBO(245, 146, 69, 1),
                  obscureText: true,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.visibility_off_outlined,
                      color: Color.fromRGBO(245, 146, 69, 1)
                    ),
                    hintText: "**********",
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(194, 195, 204, 1)
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 0
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(250, 200, 162, 1)
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(250, 200, 162, 1)
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                height: 20,
                width: 330,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Forgot Password ? ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(31, 32, 41, 1)
                      ),
                    ),
                    GestureDetector(
                      child: const Text(
                        "Click Here",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(31, 32, 41, 1)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardPage(),
                    ),
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 35),
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 16
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                ),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                ), 
              ),
              const SizedBox(height: 20,),
              Container(
                height: 1,
                width: 330,
                color: const Color.fromRGBO(245, 146, 69, 1)
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 35),
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 16
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                ),
                child: const Text(
                  "LOGIN WITH EMAIL",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                ), 
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(330, 35),
                  padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 16
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                ),
                child: const Text(
                  "LOGIN WITH FACEBOOK",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                ), 
              ),
              const SizedBox(height: 40,),
              Container(
                height: 30,
                width: 330,
                alignment: Alignment.center,
                child: const Text(
                  "By continue you agree to our\n    Terms & Privacy Policy",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(31, 32, 41, 1)
                  ),
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}