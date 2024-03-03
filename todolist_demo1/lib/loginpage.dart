import 'package:flutter/material.dart';
//import 'todolist.dart';

class LogInPage extends StatefulWidget{

  const LogInPage({super.key});

  @override
  State createState()=> _LogInPageState();
}

class _LogInPageState extends State{

  GlobalKey<FormFieldState> globalKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(232, 237, 250, 1),
        child: Form(
          key: globalKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 60,),
                const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 80,),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.mail_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  //color: const Color.fromRGBO(2, 167, 177, 1),
                  child: ElevatedButton(
                    onPressed: (){},
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                         Color.fromRGBO(2, 167, 177, 1),
                      ),
                      foregroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(232, 237, 250, 1),
                      ),
                    ),
                    child: const Text("Log In"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}