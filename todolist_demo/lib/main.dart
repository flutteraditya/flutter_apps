import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoListDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoListDemo extends StatefulWidget{

  const ToDoListDemo({super.key});

  @override
  State createState() => _ToDoListState();
}

class ModelDemo{
  String title;
  String content;
  ModelDemo(this.title,this.content);
}

class _ToDoListState extends State{

  List str = [
    // {
    //   "title" : "Lorem Ipsum is simply setting industry.",
    //   "content": "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    // }
  ];
  int val = 0;
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();


  Color containerColor(int index){
    //index = index + 1;
    //print(index);
     if(index%4 == 3 ){
      return const Color.fromRGBO(250, 232, 250, 1);
    }
    else if(index%4 == 2){
      return const Color.fromRGBO(250, 249, 232, 1);
    }
    else if(index%4 == 1){
      return const Color.fromRGBO(232, 237, 250, 1);
    }
    return const Color.fromRGBO(250, 232, 232, 1);
  }

  void bottomSheetDemo(int index){
    showModalBottomSheet(
            context: context,
            builder: (BuildContext context){
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create Task",
                    style: GoogleFonts.quicksand(
                      //color: const Color.fromARGB(0,0,0,1),
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: title,
                    decoration: InputDecoration(
                      hintText: "enter title",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: content,
                    decoration: InputDecoration(
                      hintText: "enter massage",
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(54, 72, 87, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      if(index == -1){
                        addTask();
                      }
                      else{
                        editTask(index);

                        }
                        setState((){});
                    }, 
                    child: const Text("submit"),
                    )
                ],
              );
            
            }
          );
  }

  void addTask(){
    str.add(ModelDemo( title.text, content.text));
  }
  void editTask(int index){
    str[index].title = title.text;
    str[index].content = content.text;
  }
  void deleteTask(int index){
    str.removeAt(index);
  }
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "To-do list",
          style: GoogleFonts.quicksand(
          //style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: str.length,
        //reverse: true,
        itemBuilder: (BuildContext context,int index){
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: containerColor(index),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius:5,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Column(
              children: [
                //const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(child: Icon(Icons.image)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 350,
                          child: Text(str[index].title,
                          style: GoogleFonts.quicksand(
                          //style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        ),
                        const SizedBox(height: 10,),
                        SizedBox(
                          width: 350,
                          child: Text(str[index].content,
                          style: GoogleFonts.quicksand(
                          //style: TextStyle(
                            color: const Color.fromARGB(255, 84, 69, 69),
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //SizedBox(width: 10,),
                    SizedBox(
                      height: 20,
                      child: Text("10 July 2023",
                      style: GoogleFonts.quicksand(
                          //style: TextStyle(
                            color: const Color.fromARGB(255, 84, 69, 69),
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: (){
                        bottomSheetDemo(index);
                      },
                      icon: const Icon(
                        Icons.edit_outlined,
                        size: 20,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    //const SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){
                        deleteTask(index);
                        setState((){});
                      },
                      icon: const Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    //SizedBox(width: 10,),
                  ],
                ),
                //SizedBox(height: 5,)
              ],
            ),

          );

        }
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     setState(() {
      //       val++;
      //     });
      //   },
      //   child: const Icon(Icons.add),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomSheetDemo(-1);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

