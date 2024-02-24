import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainAppState();

}

class _MainAppState extends State{
  bool flg = false;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:(flg) ? const StateDemo() : const SizedBox(),
        floatingActionButton: FloatingActionButton(
          onPressed:  (){
            flg = !flg;
            setState(() {});
          },
          child: const Icon(Icons.navigate_next),
          ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StateDemo extends StatefulWidget{

  const StateDemo({super.key});

  @override
  State createState(){
    print("in createState method");
    return _StateDemoState();
  }
}

class _StateDemoState extends State{

  bool flag = true;

  @override
  void initState(){
    super.initState();
    print("in initState method");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("in didChangeDependencies method");
  }

  @override
  Widget build(BuildContext context){
    print("in build method");

    return  SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              onPressed: () {
              setState(() {
              });
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.grey),
                foregroundColor: MaterialStatePropertyAll(Colors.white)
              ),
              child: const Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant  oldWidget){
    super.didUpdateWidget(oldWidget);
    print("in didUpdateWidget method");
  }

  @override
  void setState(VoidCallback fn){
    super.setState(() {});
    print("in setState method");
  }

  @override
  void deactivate(){
    super.deactivate();
    print("in deactivate method");
  }

  @override
  void dispose(){
    super.dispose();
    print("in dispose method");
  }
}