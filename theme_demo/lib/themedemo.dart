
import 'package:flutter/material.dart';

class ThemeDemo extends StatefulWidget{
  
  final String title;
  const ThemeDemo({super.key,required this.title});
  @override
  State createState() => _ThemeDemoState();
}

class _ThemeDemoState extends State{

//  const ThemeDemo({super.key});
  int _counter = 0;

  void _incrementCount(){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "My Button",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCount,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}