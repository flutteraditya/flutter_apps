

import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget{

  const OnBoardScreen({super.key});

  @override
  State createState() => _OnBoardScreenState();

}

class _OnBoardScreenState extends State{

  @override
  Widget build(BuildContext context){

    return Column(
      children: [
        Container(
          height: 445,
          width: 375,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
            image: const DecorationImage(
              image: AssetImage("assets/gs01.png"),
            ),
          ),
        ),
        SizedBox(height: 40,),

      ],
    );
  }
}