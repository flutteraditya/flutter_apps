import 'package:flutter/material.dart';

class Assign05 extends StatelessWidget{
  const Assign05({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.asset("image/01.jpg",height: 150,width: 150,),
          Image.asset("image/02.jpg",height: 150,width: 150,),
          Image.asset("image/03.jpg",height: 150,width: 150,),
        ],
      ),
    );
  }
}