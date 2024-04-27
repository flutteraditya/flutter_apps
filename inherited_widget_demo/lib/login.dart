
import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/home.dart';
import 'package:inherited_widget_demo/main.dart';

class LogIn extends StatefulWidget{

  const LogIn({super.key});

  @override
  State createState() => _LogInState();
}

class _LogInState extends State{

  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context){
    DataHouse obj = DataHouse.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          Container(
            width: 250,
            alignment: Alignment.centerLeft,
            child: const Text("id"),
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: TextFormField(
              controller: idController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            width: 250,
            alignment: Alignment.centerLeft,
            child: const Text("name"),
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            width: 250,
            alignment: Alignment.centerLeft,
            child: const Text("userName"),
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: TextFormField(
              controller: userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              if(idController.text.isNotEmpty){
                if(int.parse(idController.text)== obj.id && nameController.text == obj.name && userNameController.text == obj.userName){
                  //obj.userName = "aditya";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const Home(),
                    ),
                  );
                }
              }
            }, 
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(250, 50),
              backgroundColor: Colors.grey[400],
              foregroundColor: Colors.black,
            ),
            child: const Text("submit"),
          ),
        ],
      ),
    );
  }
}