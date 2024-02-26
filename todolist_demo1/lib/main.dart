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
      home: ToDoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoList extends StatefulWidget{

  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

class _ToDoListState extends State{

  List conColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  List msg = [
    {
      "title" : "Lorem Ipsum is simply setting industry.",
      "content": "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    }
  ];

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w600,
            fontSize: 26,
            //backgroundColor: Color.fromRGBO(2, 167, 177, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: ( context, index){

            return Container(
              height: 132,
              width: 330,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: conColor[index%4],
                boxShadow: const[
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    spreadRadius: 1,
                    offset: Offset(0, 10)
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg"),),
                          boxShadow: [
                            BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.07),
                            blurRadius: 10,
                            spreadRadius: 0,
                            offset: Offset(0, 0)
                            ),
                          ],
                        ),
                        //child: Image.network("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg"),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                msg[0]["title"],
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  //backgroundColor: Color.fromRGBO(2, 167, 177, 1),
                                ),
                             ),
                             const SizedBox(height: 5,),
                            Text(
                                msg[0]["content"],
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  //backgroundColor: Color.fromRGBO(2, 167, 177, 1),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                ],
              ),
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}