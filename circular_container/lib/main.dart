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
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(8, 237, 237, 1),
              border: Border.all(
                width: 1,
                color: Colors.black,
              ),
              //borderRadius: BorderRadius.circular(20),
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color:Color.fromRGBO(44, 125, 246, 1),
                  blurRadius: 5,
                  spreadRadius: 7,
                  offset:Offset(15, 15)
                ),
              ],
            ),
            //child: Image.network("src"),
          ),
        ),
      ),
    );
  }
}


