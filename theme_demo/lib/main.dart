import 'package:flutter/material.dart';
import 'package:flutter_application_16/themedemo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: const ThemeDemo(title: "Theme Demo"),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          background: Colors.grey,
          primary: Colors.blue,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.yellow,
            fixedSize: const Size(500, 50)
          ),
        ),
        useMaterial3: true,
      ),
    );
  }
}



