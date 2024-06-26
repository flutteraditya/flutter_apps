import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({super.key});

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  var empData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(                           //listtile
        itemCount: empData.length,
        itemBuilder: (context, index) {
          return Text(empData[index]["employee_name"]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getEmployeeData,
        child: const Text("Get"),
      ),
    );
  }

  void getEmployeeData()async{
    //log("message");
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    //log("message");
    http.Response response = await http.get(url); // or use var to store
    //log("message");
    log(response.body);
    Map<String,dynamic> resData = json.decode(response.body);
    //log(resData);
    empData = resData["data"];
    setState(() {
      
    });
  }
}