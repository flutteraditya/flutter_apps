import 'package:flutter/material.dart';

class TriColors extends StatelessWidget {
  const TriColors({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text("Tiranga"),backgroundColor: Colors.purple,),
        body:SizedBox(
          height: double.infinity,
          width: double.infinity,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100,width: 0,),
                  Container(
                    height: 500,
                    width: 10,
                    color: Colors.black,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100,width: 300,),
                  Container(height: 70,width: 300,color: Colors.orange,),
                  Container(height: 70,width: 300,color: Colors.white,child: Image.asset("images/ashokchakra.png")),
                  Container(height: 70,width: 300,color: Colors.green,),
                  //Container(height: 100,width: 100,),
                ],
              )

            ],
            )
        )
      );
  }
}