import 'package:flutter/material.dart';

class Assign03 extends StatelessWidget{
  const Assign03({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          color: Colors.blue,
        ),
      ),
    );
  }
}