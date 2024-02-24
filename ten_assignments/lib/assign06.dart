import 'package:flutter/material.dart';

class Assign06 extends StatelessWidget{

  const Assign06({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("Scrollable"),backgroundColor: Colors.red,),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.orange,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.white,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.green,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.orange,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.white,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.green,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.orange,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.white,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.green,),
            Container(height: 200,width: double.infinity,margin: const EdgeInsets.all(20),color: Colors.orange,),
          ],
        ),
      ),
    );
  }
}