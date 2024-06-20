import 'package:flutter/material.dart';
import 'package:home_rental_app/get_started_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GetStartedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
