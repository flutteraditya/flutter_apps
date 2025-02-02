import 'package:flutter/material.dart';
import 'package:plantsapp/varificationpage.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/png/design01.png",
            height: 120,
            alignment: Alignment.topLeft,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Column(
              children: [
                const SizedBox(height: 10,width: double.infinity,),
                const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      prefixIcon: const Icon(Icons.call_outlined),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const VarificationPage(),
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
                    "Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                Image.asset(
                  "assets/png/image01.png",
                  height: 355,
                  width: 355,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}