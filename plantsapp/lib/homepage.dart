import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              Image.asset(
                "assets/png/design03.png",
                height: 80,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row()
        ],
      ),
    );
  }
}