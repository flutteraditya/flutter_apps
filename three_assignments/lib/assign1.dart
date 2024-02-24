import 'package:flutter/material.dart';

class Assign1 extends StatefulWidget{
  const Assign1({super.key});
  @override
  State<Assign1> createState()=> _Assign1State();
}

class _Assign1State extends State<Assign1>{
  int? _count= 0;

  void _printTableValue(){
    setState(() {
      _count= _count! + 2;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table of 2")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("click button"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _printTableValue,
              child: const Text("print table"),
            )
          ],
        )
      ),
    );
  }
}
