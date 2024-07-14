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
        Provider(
          create: (context){
            log("provider create");
            return Company(companyName: "core2web", companyType: "productbase");
          }
        ),
        ProxyProvider<Company,Employee>(
          update: (context,company,employee){
            log("proxyprovider update");
            return Employee(empId: 1, empName: "aditya", companyName: company.companyName, companyType: Provider.of<Company>(context).companyType);
          }
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProxyProviderDemo(),
      ),
    );
  }
}


class Company{
  String companyName;
  String companyType;

  Company({required this.companyName,required this.companyType});
}

class Employee{
  String empName;
  int empId;
  String companyName;
  String companyType;

  Employee({required this.empId,required this.empName,required this.companyName,required this.companyType});
}

class ProxyProviderDemo extends StatefulWidget {
  const ProxyProviderDemo({super.key});

  @override
  State<ProxyProviderDemo> createState() => _ProxyProviderDemoState();
}

class _ProxyProviderDemoState extends State<ProxyProviderDemo> {
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