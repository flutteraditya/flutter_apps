import 'package:flutter/material.dart';

class Assign2 extends StatefulWidget{
  const Assign2({super.key});
  @override
  State<Assign2> createState()=> _Assign2State();
}

class _Assign2State extends State<Assign2>{
  bool box1Colour= false;
  bool box2Colour= false;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("colourBox"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color:box1Colour ? Colors.black:Colors.blue, 
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          box1Colour= !box1Colour;
                        });
                      },
                      child: const Text("colour box1"),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color:box2Colour ? Colors.black:Colors.red, 
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          box2Colour= !box2Colour;
                        });
                      },
                      child: const Text("colour box2"),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}