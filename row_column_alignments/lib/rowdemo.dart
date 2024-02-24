import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text("Row"),backgroundColor: Colors.purple,),
        body:SizedBox(
          height: double.infinity,
          width: double.infinity,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
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