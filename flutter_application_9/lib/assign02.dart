import 'package:flutter/material.dart';

class Assign02 extends StatelessWidget{
  const Assign02({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),
        centerTitle: true,
        backgroundColor: Colors.grey,
        actions: const [
          Icon(Icons.add_a_photo, color: Colors.white,),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}