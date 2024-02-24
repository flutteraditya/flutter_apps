//padding and margin

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text(
            "Padding N Margin",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            height: 250,
            width: 250,
            color: Colors.blue,
            child: Container(
              height: 250,
              width: 250,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              color: Colors.yellow,
              child: Image.network(
                "https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}