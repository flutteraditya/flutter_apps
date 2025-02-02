import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 465,
          width: 375,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: const DecorationImage(
              //fit: BoxFit.fill,
              image: AssetImage("assets/on.png"),
            ),
          ),
        ),
      ],
    );
  }
}