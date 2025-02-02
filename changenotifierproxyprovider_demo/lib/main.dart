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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context){
            log("ChangeNotifierProvider create");
            return Company(companyName: "core2web", companyType: "servicebase");
          }
        ),
        ChangeNotifierProxyProvider(
          create: (context){
            log("ChangeNotifierProxyProvider create");
            return Employee(
              empId: 1, 
              empName: "aditya", 
              companyName: Provider.of<Company>(context,listen: false).companyName, 
              companyType: Provider.of<Company>(context,listen: false).companyType
            );
          }, 
          update: (context,company,employee){
            log("ChangeNotifierProxyProvider update");
            return Employee(
              empId: 1, 
              empName: "aditya", 
              companyName: Provider.of<Company>(context).companyName, 
              companyType: Provider.of<Company>(context).companyType
            );
          }
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierProxyProviderDemo(),
      ), 
    );
  }
}

class Company with ChangeNotifier{
  String companyName;
  String companyType;

  Company({required this.companyName,required this.companyType});
}

class Employee with ChangeNotifier{
  String empName;
  int empId;
  String companyName;
  String companyType;

  Employee({required this.empId,required this.empName,required this.companyName,required this.companyType});
}

class ChangeNotifierProxyProviderDemo extends StatefulWidget {
  const ChangeNotifierProxyProviderDemo({super.key});

  @override
  State<ChangeNotifierProxyProviderDemo> createState() => _ChangeNotifierProxyProviderDemoState();
}

class _ChangeNotifierProxyProviderDemoState extends State<ChangeNotifierProxyProviderDemo> {
  @override
  Widget build(BuildContext context) {
    log("proxyprovider build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("proxyproviderdemo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Provider.of<Employee>(context).empId}"),
            const SizedBox(height: 20,),
            Text(Provider.of<Employee>(context).empName),
            const SizedBox(height: 20,),
            Text(Provider.of<Employee>(context).companyName),
            const SizedBox(height: 20,),
            Text(Provider.of<Employee>(context).companyType),
            const SizedBox(height: 20,),
            Text(Provider.of<Company>(context).companyName),
            const SizedBox(height: 20,),
            Text(Provider.of<Company>(context).companyType),
          ],
        ),
      ),
    );
  }
}