import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//google_fonts: ^6.1.0
import 'package:intl/intl.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

  List toDoList = [ToDoListModel("Date", "Title", "Content")];

class ToDoListModel {
  String date;
  String title;
  String content;

  ToDoListModel(
    this.date,
    this.title,
    this.content
  );
}

class _ToDoListState extends State {

  List conColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  void onSubmit(bool isEdit,[ToDoListModel? editableObj]){

    if(titleController.text.trim().isNotEmpty 
      && contentController.text.trim().isNotEmpty 
      && dateController.text.trim().isNotEmpty){

      if(isEdit){
        editableObj!.title = titleController.text.trim();
        editableObj.content = contentController.text.trim();
        editableObj.date = dateController.text.trim();
      }
      else{
        toDoList.add(
          ToDoListModel(
            dateController.text.trim(),
            titleController.text.trim(),
            contentController.text.trim(),
          ),
        );
      }
      dateController.clear();
      titleController.clear();
      contentController.clear();
      setState(() {
        
      });
    }
  }

  void myBottomSheet(bool isEdit,[ToDoListModel? editableObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: ListView(
              //mainAxisSize: MainAxisSize.min,
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text((isEdit) ?
                  "Edit Task" :
                  "Create Task" ,
                  textAlign: TextAlign.center,
                  //style: GoogleFonts.quicksand(
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Title",
                      //style: GoogleFonts.quicksand(
                      style: TextStyle(
                        color: Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Description",
                      //style: GoogleFonts.quicksand(
                      style: TextStyle(
                        color: Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: contentController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Date",
                      //style: GoogleFonts.quicksand(
                      style: TextStyle(
                        color: Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );
                        String formatedDate =
                            DateFormat.yMMMd().format(pickeddate!);
                        setState(() {
                        dateController.text = formatedDate;
                        }
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    if(isEdit){
                      onSubmit(isEdit,editableObj);
                    }
                    else{
                      onSubmit(isEdit);
                    }
                  },
                  child: const Text(
                    "Submit",
                    //style: GoogleFonts.inter(
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        elevation: 10,
        automaticallyImplyLeading: false,
        title: const Text(
          "To-Do List",
          //style: GoogleFonts.quicksand(
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 26,
            //backgroundColor: Color.fromRGBO(2, 167, 177, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return Container(
                height: 130,
                width: 330,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: conColor[index % 4],
                  boxShadow: const [
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
                          decoration:  BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.grey
                            ),
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "images/note.png"),
                            ),
                            boxShadow: const [
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
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                toDoList[index].title,
                                maxLines: 2,
                                //style: GoogleFonts.quicksand(
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  //backgroundColor: Color.fromRGBO(2, 167, 177, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                toDoList[index].content,
                                maxLines: 3,
                                //style: GoogleFonts.quicksand(
                                style: const TextStyle(
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
                    const SizedBox(
                      height: 5,
                    ),
                    const Spacer(),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //SizedBox(width: 10,),
                        SizedBox(
                          height: 20,
                          child: Text(
                            toDoList[index].date,
                            //style: GoogleFonts.quicksand(
                            style: const TextStyle(
                              color: Color.fromARGB(255, 84, 69, 69),
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            dateController.text = toDoList[index].date;
                            titleController.text = toDoList[index].title;
                            contentController.text = toDoList[index].content;
                            myBottomSheet(true,toDoList[index]);
                          },
                          child: const Icon(
                            Icons.edit_outlined,
                            size: 20,
                            color: Colors.blueGrey,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            toDoList.removeAt(index);
                            setState(() {
                              
                            });
                          },
                          child: const Icon(
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
        onPressed: () {
          myBottomSheet(false);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}