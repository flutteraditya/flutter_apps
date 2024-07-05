import 'package:flutter/material.dart';

class NamedScreen1 extends StatelessWidget {
  const NamedScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("namedscreen1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                  "/namedscreen2"
                );
              }, 
              child: const Text("namedscreen2"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                  "namedscreen3"
                );
              }, 
              child: const Text("namedscreen3"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: const Text("namedscreen1 -> homepage"),
            ),
          ],
        ),
      ),
    );
  }
}