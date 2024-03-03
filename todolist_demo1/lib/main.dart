import 'package:flutter/material.dart';
import 'todolist.dart';
import 'loginpage.dart';

void main() => runApp(const MainApp());


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

