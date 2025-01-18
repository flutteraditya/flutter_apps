import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}
RxInt x = 10.obs;
class _FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Text("$x"),
          ),
          Text("$x"),
          ElevatedButton(
            onPressed: (){
              x++;
            }, 
            child: const Text(
              "click here",
            ),
          ),
        ],
      ),
    );
  }
}