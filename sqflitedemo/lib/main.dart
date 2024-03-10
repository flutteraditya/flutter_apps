import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


dynamic database;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //runApp(const MainApp());

  database= await openDatabase(
    join(await getDatabasesPath(),"firstdb.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''CREATE TABLE employee(empId INT PRIMARY KEY,empName TEXT,empSalary REAL)'''
      );
    },
  );
  print("___________________________________________________________");
  print(database);

  Employee emp1= Employee(empId: 01, empName: "aaaa", empSalary: 1000);
  Employee emp2= Employee(empId: 02, empName: "bbbb", empSalary: 2000);
  Employee emp3= Employee(empId: 01, empName: "aaaa", empSalary: 1000);

  insertInto(emp1);
  insertInto(emp2);
  insertInto(emp3);
  print(await empInfo());

  List len = await empInfo();
  int le= len.length;
  for(int i=0;i<le;i++){
    await deleteInfo(len[i]);

  }
  print(await empInfo());

}

void insertInto(Employee info) async{

  Database db = await database;

  db.insert(
    "employee", 
    info.insertMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future <List<Employee>> empInfo()async{
  Database db = await database;
  List<Map<String,dynamic>> empList= await db.query("employee");

  return List.generate(
    empList.length,
    (i){
      return Employee(
        empId: empList[i]["empId"], 
        empName: empList[i]["empName"], 
        empSalary: empList[i]["empSalary"],
      );
    }
  );
}


Future<void> deleteInfo(Employee emp)async{
  Database db= await database;

  db.delete(
    "employee",
    where: "empId= ?",
    whereArgs: [emp.empId],
  );
}

class Employee{

  int empId;
  String empName;
  double empSalary;

  Employee(
    {
      required this.empId,
      required this.empName,
      required this.empSalary,
    }
  );

  Map<String,dynamic> insertMap(){
    return 
    {
      "empId": empId,
      "empName": empName,
      "empSalary": empSalary,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return "empId: $empId empName: $empName empSalary $empSalary";
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
