import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/login.dart';

void main() {
  runApp(const MainApp());
}

class DataHouse extends InheritedWidget{
  final String name;
  final String userName;
  final int id;

  const DataHouse({
    required this.id,
    required this.name,
    required this.userName,
    super.key,
    required super.child
  });

  @override
  bool updateShouldNotify(DataHouse oldWidget){
    if(id != oldWidget.id || name != oldWidget.name || userName != oldWidget.userName){
      return true;
    }
    return false;
  }

  static DataHouse of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<DataHouse>()!;
  }

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {

    return const DataHouse(
      id: 11, 
      name: "aditya", 
      userName: "adi", 
      child: MaterialApp(
        home: LogIn(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

