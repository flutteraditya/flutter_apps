import 'package:flutter/material.dart';
import 'package:plantsapp/homepage.dart';

class VarificationPage extends StatefulWidget {
  const VarificationPage({super.key});

  @override
  State<VarificationPage> createState() => _VarificationPageState();
}

class _VarificationPageState extends State<VarificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: ListView(
        children: [
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    icon: const Icon(Icons.arrow_back)
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/png/design02.png",
                    height: 120,
                  ),
                ],
              ),
              Container(
                width: 360,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                      width: 130,
                      child: Text(
                        "Varification",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 46,
                      width: 272,
                      child: Text(
                        "Enter the OTP code from the phone we just sent you.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 56,
                            width: 56,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ), 
                            ),
                          ),
                          const SizedBox(width: 32,),
                          SizedBox(
                            height: 56,
                            width: 56,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ), 
                            ),
                          ),
                          const SizedBox(width: 32,),
                          SizedBox(
                            height: 56,
                            width: 56,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ), 
                            ),
                          ),
                          const SizedBox(width: 32,),
                          SizedBox(
                            height: 56,
                            width: 56,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ), 
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const Text(
                      "Don’t receive OTP code! Resend",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const HomePage(),
                    ),
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(320, 50),
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                    left: 93,
                    right: 92
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor: const Color.fromRGBO(62, 102, 24, 1)
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}