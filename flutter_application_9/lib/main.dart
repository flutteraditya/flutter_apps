import 'package:flutter/material.dart';
import 'package:flutter_application_9/assign01.dart';
import 'package:flutter_application_9/assign02.dart';
import 'package:flutter_application_9/assign03.dart';
import 'package:flutter_application_9/assign04.dart';
import 'package:flutter_application_9/assign05.dart';
import 'package:flutter_application_9/assign06.dart';
import 'package:flutter_application_9/assign07.dart';
//import 'package:flutter_application_9/assign08.dart';
//import 'package:flutter_application_9/assign09.dart';
//import 'package:flutter_application_9/assign10.dart';




void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  final int x=7;

  @override
  Widget build(BuildContext context) {
    if(x==1){
      return const MaterialApp(home: Assign01(),debugShowCheckedModeBanner: false,);
    }
    else if(x==2){
      return const MaterialApp(home: Assign02(),debugShowCheckedModeBanner: false,);
    }
    else if(x==3){
      return const MaterialApp(home: Assign03(),debugShowCheckedModeBanner: false,);
    }
    else if(x==4){
      return const MaterialApp(home: Assign04(),debugShowCheckedModeBanner: false,);
    }
    else if(x==5){
      return const MaterialApp(home: Assign05(),debugShowCheckedModeBanner: false,);
    }
    else if(x==6){
      return const MaterialApp(home: Assign06(),debugShowCheckedModeBanner: false,);
    }
    else if(x==7){
      return const MaterialApp(home: Assign07(),debugShowCheckedModeBanner: false,);
    }
    else if(x==8){
      return const MaterialApp(home: Assign04(),debugShowCheckedModeBanner: false,);
    }
    else if(x==9){
      return const MaterialApp(home: Assign04(),debugShowCheckedModeBanner: false,);
    }
    else if(x==10){
      return const MaterialApp(home: Assign04(),debugShowCheckedModeBanner: false,);
    }
    else{
      return const MaterialApp(home: Scaffold(),debugShowCheckedModeBanner: false,);
    }
    
  }
}
