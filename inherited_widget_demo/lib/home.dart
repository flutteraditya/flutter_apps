import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    DataHouse obj = DataHouse.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          SizedBox(
            height: 20,
            width: 250, 
            child: Text("id : ${obj.id}"),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 20,
            width: 250, 
            child: Text("name : ${obj.name}"),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 20,
            width: 250, 
            child: Text("userName : ${obj.userName}"),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}