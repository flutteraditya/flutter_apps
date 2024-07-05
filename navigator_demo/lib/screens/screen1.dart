import 'package:flutter/material.dart';
import 'package:navigator_demo/screens/screen2.dart';
import 'package:navigator_demo/screens/screen3.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("screen1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Screen2(),
                  ),
                );
              }, 
              child: const Text("screen2"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Screen3(),
                  ),
                );
              }, 
              child: const Text("screen3"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: const Text("screen1 -> homepage"),
            ),
          ],
        ),
      ),
    );
  }
}