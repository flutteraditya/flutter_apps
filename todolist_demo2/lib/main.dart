import 'package:flutter/material.dart';
import 'todolistpage.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());

  database= await openDatabase(
    join(await getDatabasesPath(),"todo.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''CREATE TABLE todolist(title TEXT,describe TEXT,date TEXT)'''
      );
    },
  );
}

void insertData(NotesModelClass notes) async{
  
  Database db= await database;

  await db.insert(
    "todolist", 
    notes.retMap(),
  );

  print(await showData());

}
 Future<List<NotesModelClass>>showData() async{
  
  Database db= await database;
  List lst= await db.query("todolist");

  List<NotesModelClass> lst1 = List.generate(
    lst.length, 
    (i) {
      return NotesModelClass(
        title: lst[i]["title"],
        description: lst[i]["describe"],
        date: lst[i]["date"]
      );
    }
  );
  return lst1;
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
