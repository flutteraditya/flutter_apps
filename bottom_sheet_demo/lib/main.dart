import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomSheetDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomSheetDemo extends StatefulWidget{

  const BottomSheetDemo({super.key});

  @override
  State createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context){
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Enter Text",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "enter title",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "enter massage",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){

                    }, 
                    child: const Text("submit"),
                    )
                ],
              );
            
            }
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}