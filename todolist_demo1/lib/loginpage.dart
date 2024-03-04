import 'package:flutter/material.dart';
import 'todolist.dart';

class LogInPage extends StatefulWidget{

  const LogInPage({super.key});

  @override
  State createState()=> _LogInPageState();
}

class Users{
  String userName;
  String password;

  Users(this.userName,this.password);
}

List validUsers = [
  Users("aditya","password"),
];

class _LogInPageState extends State{

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isSignUp = false;
  bool showPassword = false;

  bool isValidateUser(TextEditingController userNameController,TextEditingController passwordController){
    for(int i=0;i<validUsers.length;i++){
      if(userNameController.text == validUsers[i].userName){
        if(passwordController.text == validUsers[i].password){
          return true;
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context){

    return !isSignUp ? 
    Scaffold(
      body: Container(
        color: const Color.fromRGBO(232, 237, 250, 1),
        child: Form(
          key: globalKey,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Image.asset(
                  "images/user.png",
                  height: 100,
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 60,),
                TextFormField(
                  controller: userNameController,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please Enter Username";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_outline),
                    label: const Text("Enter Username"),
                    hintText: "username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  controller: passwordController,
                  obscureText: !showPassword,
                  obscuringCharacter: "*",
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Please Enter Password";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: GestureDetector( 
                      onTap: () {
                        showPassword = !showPassword;
                        setState(() {
                        });
                      },
                    child: showPassword ? 
                      const Icon(Icons.remove_red_eye) :
                      const Icon(Icons.remove_red_eye_outlined),
                    ),
                    label: const Text("Enter Password"),
                    hintText: "password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 50,
                  //color: const Color.fromRGBO(2, 167, 177, 1),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 167, 177, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    onPressed: (){
                      bool isVal = globalKey.currentState!.validate();

                      if(isVal){
                        bool isValidate = isValidateUser(userNameController,passwordController);

                        if(isValidate){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ToDoList(),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Log In Successful!"),
                            ),
                          );
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Invalid Username or Password")
                            ),
                          );
                        }
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Please Enter Username or Password"),
                          ),
                        );
                      }
                    },
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
    ) : 
    Scaffold(
      
    );
  }
}