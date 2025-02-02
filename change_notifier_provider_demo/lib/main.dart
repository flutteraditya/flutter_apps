import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("in main app build");
    return ChangeNotifierProvider(
      create: (context){
        return EmployeeModelClass(
          empId: 101,
          empName: "adi",
          empPosition: "app developer",
          empSalary: 1200000,
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
  @override
  Widget build(BuildContext context) {
    log("in homepage build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "change notifier provider",
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          const DisplayData(),
          const SizedBox(height: 10,),
          Text("empId: ${Provider.of<EmployeeModelClass>(context).empId}"),
          const SizedBox(height: 10,),
          Text("empName: ${Provider.of<EmployeeModelClass>(context).empName}"),
          const SizedBox(height: 10,),
          Text("empSalary: ${Provider.of<EmployeeModelClass>(context).empSalary}"),
          const SizedBox(height: 10,),
          Text("empPosition: ${Provider.of<EmployeeModelClass>(context).empPosition}"),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: (){
              Provider.of<EmployeeModelClass>(listen: false,context).changeData(1500000, "hr");
            },
            child: const Text(
              "change",
            ),
          ),
        ],
      ),
    );
  }
}

class DisplayData extends StatelessWidget {
  const DisplayData({super.key});

  @override
  Widget build(BuildContext context) {
    log("in display data build");
    return const Text("Employee Info");
  }
}

class EmployeeModelClass extends ChangeNotifier{
  int empSalary;
  int empId;
  String empName;
  String empPosition;

  EmployeeModelClass(
    {
      required this.empId,
      required this.empSalary,
      required this.empName,
      required this.empPosition
    }
  );

  set setEmpSalary(empSalary)=> this.empSalary = empSalary;

  void changeData(int empSalary,String empPosition){
    this.empSalary = empSalary;
    this.empPosition = empPosition;
    notifyListeners();
  }
}