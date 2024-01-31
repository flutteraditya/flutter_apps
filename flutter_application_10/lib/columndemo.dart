import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text("Column"),backgroundColor: Colors.purple,),
        body:SizedBox(
          height: double.infinity,
          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(height: 100,width: 100,color: Colors.red,),
              Container(height: 100,width: 100,color: Colors.green,),
              Container(height: 100,width: 100,color: Colors.blue,),
            ],
          )
        )
      );
  }
}