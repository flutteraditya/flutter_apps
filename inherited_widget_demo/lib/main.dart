import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/home.dart';

void main() {
  runApp(const MainApp());
}

class DataHouse extends InheritedWidget{
  final String name;
  final String userName;
  final int id;

  const DataHouse({
    required this.id,
    required this.name,
    required this.userName,
    super.key,
    required super.child
  });

  @override
  bool updateShouldNotify(DataHouse oldWidget){
    if(id != oldWidget.id || name != oldWidget.name || userName != oldWidget.userName){
      return true;
    }
    return false;
  }

  static DataHouse of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<DataHouse>()!;
  }

}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();

}

class _MainAppState extends State{
  int id = 11;
  String name = "aditya";
  String userName = "adi";

  @override
  Widget build(BuildContext context) {
    log("message");
    return DataHouse(
      id: id, 
      name: name, 
      userName: userName, 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity,),
              const Home(),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  id = 45;
                  name = "adityakhetre";
                  userName = "aditya";
                  setState(() {
                  });
                },
                child: const Text("change"),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

