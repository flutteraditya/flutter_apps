import 'package:flutter/material.dart';

class NamedScreen3 extends StatelessWidget {
  const NamedScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("namedscreen3"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text("namedscreen3 -> homepage || namedscreen1 || namedscreen2"),
            ),
          ],
        ),
      ),
    );
  }
}