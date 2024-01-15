import 'package:flutter/material.dart';
import 'package:flutter_application_5/assign1.dart';
import 'package:flutter_application_5/assign2.dart';
import 'package:flutter_application_5/assign3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
 static int x= 3;
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    if(x==1){
      return const MaterialApp(
        home: Assign1(),
      );
    }else if(x==2){
      return const Assign2();
    }else{
      return const MaterialApp(
        home: Assign3()
    
      );
    }
  }
}
