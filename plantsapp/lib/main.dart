import 'package:flutter/material.dart';
import 'package:plantsapp/getstartedpage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GetStartedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}