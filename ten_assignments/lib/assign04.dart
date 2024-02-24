import 'package:flutter/material.dart';

class Assign04 extends StatelessWidget{
  const Assign04({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}