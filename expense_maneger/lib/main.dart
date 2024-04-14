import 'package:expense_maneger/graphscreen.dart';
import 'package:expense_maneger/splashscreen.dart';
import 'package:expense_maneger/trashscreen.dart';
//import 'package:expense_maneger/transactionscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TrashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
