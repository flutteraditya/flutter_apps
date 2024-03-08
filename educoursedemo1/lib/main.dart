// import 'package:educoursedemo1/course.dart';
import 'package:educoursedemo1/educorse.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EduCourse(),
      debugShowCheckedModeBanner: false,
    );
  }
}