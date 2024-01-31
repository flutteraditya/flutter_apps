import 'package:flutter/material.dart';


class Assign01 extends StatelessWidget{
  const Assign01({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        backgroundColor: Colors.purple,
        actions: const [
          Icon(Icons.favorite_rounded,color: Colors.red,),
          SizedBox(width: 10,),
          Icon(Icons.movie_creation_rounded,color: Colors.white,),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}