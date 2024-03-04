import 'package:flutter/material.dart';
import 'todolistpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
