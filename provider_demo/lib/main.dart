import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context){
        return PlayerModelClass(
          jerNo: 18,
          runs: 100,
          name: "virat",
        );
      },
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void changeData(BuildContext context){
    Provider.of<PlayerModelClass>(listen: false,context).jerNo = 45;
    Provider.of<PlayerModelClass>(listen: false,context).runs = 45000;
    Provider.of<PlayerModelClass>(listen: false,context).name = "rohit";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "provider",
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          const GetData(),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              changeData(context);
              setState(() {
              });
            }, 
            child: const Text("press"),
          ),
        ],
      ),
    );
  }
}

class GetData extends StatelessWidget {
  const GetData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("jerNo: ${Provider.of<PlayerModelClass>(context).jerNo}"),
        const SizedBox(height: 10,),
        Text("name: ${Provider.of<PlayerModelClass>(context).name}"),
        const SizedBox(height: 10,),
        Text("runs: ${Provider.of<PlayerModelClass>(context).runs}"),
      ],
    );
  }
}

class PlayerModelClass{
  int jerNo;
  int runs;
  String name;

  PlayerModelClass({
    required this.jerNo,
    required this.runs,
    required this.name
  });
}