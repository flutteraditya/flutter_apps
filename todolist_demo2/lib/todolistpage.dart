import "package:flutter/material.dart";
//import "package:flutter/widgets.dart";
//import "package:google_fonts/google_fonts.dart";

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State createState() => _ToDoListPageState();
}

class NotesModelClass {
  String title;
  String description;
  String date;
  bool done = false;

  NotesModelClass({
    required this.title,
    required this.description,
    required this.date,
  });
}

class _ToDoListPageState extends State {
  List toDoList = [
    NotesModelClass(
      title: "title",
      description: "description",
      date: "date",
    ),
  ];

  void showBottomSheetDemo(){
    showModalBottomSheet(
      context: context, 
      builder: (context){

        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: Column(
              children: [
                const Text(
                  "Create To-Do",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                Form(
                  child: Expanded(
                    child: ListView(
                      children:[
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Title",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Color.fromRGBO(89, 57, 241, 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        TextFormField(

                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Date",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        TextFormField(

                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(111, 81, 255, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 45,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 29,
                ),
                Text(
                  "Good Morning",
                  //style: GoogleFonts.quicksand(
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    //height: 27.5,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 29,
                ),
                Text(
                  "Aditya",
                  //style: GoogleFonts.quicksand(
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    //height: 37.5,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 41,
            ),
            Expanded(
              child: Container(
                //height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                //color: Color.fromRGBO(217, 217, 217, 1),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(19),
                      child: const Text(
                        "CREATE TO DO LIST",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          top: 39,
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey,
                          //     blurRadius: 4,
                          //     spreadRadius: 6,
                          //   ),
                          // ],
                        ),
                        child: ListView.builder(
                          itemCount: toDoList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 90,
                              width: 360,
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.08),
                                    blurRadius: 20,
                                    spreadRadius: 0,
                                    offset: Offset(0, 4)
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 52,
                                    width: 52,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 14,
                                      vertical: 16
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(217, 217, 217, 1),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Image.asset(
                                      "images/image.png",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          toDoList[index].title,
                                          style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          toDoList[index].description,
                                          style: const TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          toDoList[index].date,
                                          style: const TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Checkbox(
                                    value: toDoList[index].done,
                                    side: const BorderSide(width: 0.5),
                                    splashRadius: 10,
                                    activeColor:
                                      const Color.fromRGBO(4, 189, 0, 1),
                                    shape: const CircleBorder(),
                                    onChanged: (value) {
                                      toDoList[index].done = value;
                                      setState(() {});
                                    }
                                  ),
                                ],
                              ),
                            );
                          }
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheetDemo();
        },
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 46,
          color: Colors.white,
        ),
      ),
    );
  }
}
