import 'package:flutter/material.dart';
import 'package:navigator_demo/namedscreen/namedscreen1.dart';
import 'package:navigator_demo/namedscreen/namedscreen2.dart';
import 'package:navigator_demo/namedscreen/namedscreen3.dart';
import 'package:navigator_demo/screens/screen1.dart';
import 'package:navigator_demo/screens/screen2.dart';
import 'package:navigator_demo/screens/screen3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/namedscreen1": (context) => const NamedScreen1(),
        "/namedscreen2": (context) => const NamedScreen2(),
        "/namedscreen3": (context) => const NamedScreen3(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const Screen1(),
                  ),
                );
              }, 
              child: const Text("screen1"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const Screen2(),
                  ),
                );
              }, 
              child: const Text("screen2"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const Screen3(),
                  ),
                );
              }, 
              child: const Text("screen3"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context, 
                  "/namedscreen1"
                );
              }, 
              child: const Text("namedscreen1"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context, 
                  "/namedscreen2"
                );
              }, 
              child: const Text("namedscreen2"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(
                  context, 
                  "/namedscreen3"
                );
              }, 
              child: const Text("namedscreen3"),
            ),
          ],
        ),
      ),
    );
  }
}