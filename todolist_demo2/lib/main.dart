import 'package:flutter/material.dart';
import 'todolistpage.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart'as p;
import 'package:todolist_demo2/model/notesmodel.dart';

dynamic database;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //runApp(const MainApp());
  database= await openDatabase(
    p.join(await getDatabasesPath(),"td.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''CREATE TABLE todolist(
          notesId INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          describe TEXT,
          date TEXT
        )'''
      );
    },
  );
  await showData1();
  runApp(const MainApp());
}

//Insert Function
void insertData(NotesModelClass notes) async{
  
  Database db= await database;

  await db.insert(
    "todolist", 
    notes.retMap(),
  );

  //print(await showData());

}

//View Data function
Future<List<NotesModelClass>>showData() async{
  
  Database db= await database;
  List lst= await db.query("todolist");

  List<NotesModelClass> lst1 = List.generate(
    lst.length, 
    (i) {
      return NotesModelClass(
        notesId: lst[i]["notesId"],
        title: lst[i]["title"],
        description: lst[i]["describe"],
        date: lst[i]["date"]
      );
    }
  );
  return lst1;
}

//Delete Function
Future<void> deleteNotes(int id)async{

  Database db = await database;

  db.delete(
    "todolist",
    where: "notesId= ?",
    whereArgs: [id],
  );
  //print(await showData());
}

//Update Function
Future<void> updateNotes(NotesModelClass notes)async{

  Database db = await database;
  db.update(
    "todolist",
    notes.retMap(),
    where: "notesId= ?",
    whereArgs: [notes.notesId],
  );
  //print(await showData());
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