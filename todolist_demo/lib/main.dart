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

class _ToDoListState extends State{

  List str = [
    {
      "title" : "Lorem Ipsum is simply setting industry.",
      "content": "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    }
    ];
    int val = 0;

  Color containerColor(int index){
    //index = index + 1;
    //print(index);
     if(index%4 == 3 ){
      return const Color.fromARGB(249, 156, 238, 222);
    }
    else if(index%4 == 2){
      return const Color.fromARGB(249, 231, 198, 244);
    }
    else if(index%4 == 1){
      return const Color.fromARGB(232, 228, 155, 184);
    }
    return const Color.fromARGB(250, 232, 232, 1);
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
        itemCount: val,
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
                          child: Text(str[0]["title"],
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
                          child: Text(str[0]["content"],
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
                      onPressed: (){},
                      icon: const Icon(
                        Icons.edit_outlined,
                        size: 20,
                        color: Colors.blueGrey,
                      ),
                    ),
                    //const SizedBox(width: 10,),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.blueGrey,
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            val++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}