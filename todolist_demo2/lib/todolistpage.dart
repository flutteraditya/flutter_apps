
import "package:flutter/material.dart";
//import "package:flutter/widgets.dart";
//import "package:google_fonts/google_fonts.dart";
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'main.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State createState() => _ToDoListPageState();
}

class NotesModelClass {
  int? notesId;
  String title;
  String description;
  String date;
  bool done = false;

  NotesModelClass({
    this.notesId,
    required this.title,
    required this.description,
    required this.date,
  });

  Map<String,dynamic> retMap(){
    return 
    {
      "title": title,
      "describe": description,
      "date": date,
    };
  }

  Map<String,dynamic> updateMap(){
    return 
    {
      "notesId": notesId,
      "title": title,
      "describe": description,
      "date": date,
    };
  }

  @override
  String toString(){
    return "{$notesId $title $description $date}";
  }
}

List<NotesModelClass> toDoList = [];

Future<void> showData1() async{

  toDoList = await showData();
}

// [
//   NotesModelClass(
//     notesId: 1,
//     title: "required this.title",
//     description: "required this.description",
//     date: "required this.date",
//   ),
// ];
class _ToDoListPageState extends State {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController describeController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void onSubmit(bool isEdit,[NotesModelClass? notes]) async{

    if(isEdit){

      NotesModelClass notes1 = NotesModelClass(
        notesId: notes!.notesId,
        title: titleController.text, 
        description: describeController.text, 
        date: dateController.text,
      );

      updateNotes(notes1);

    }else{
      insertData(
        NotesModelClass(
          title: titleController.text, 
          description: describeController.text, 
          date: dateController.text
        ),
      );
    }
    titleController.clear();
    describeController.clear();
    dateController.clear();
    await showData1();
    setState(() {
      
    });
  }

  void deleteCurrentNotes(int i)async{
    await deleteNotes(i);
    await showData1();
    setState(() {
                                            
    });
  }

  @override
  void initState(){
    super.initState();
    //showData1();
  }

  void showBottomSheetDemo(bool isEdit,[NotesModelClass? notes]){
    showModalBottomSheet(
      isScrollControlled: true, //need for bottom
      isDismissible: true,
      context: context, 
      builder: (context){

        return Padding(
          padding: EdgeInsets.only(
            right: 15,
            left: 15,
            top: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  key: formKey,
                  //child: Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //shrinkWrap: true,
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
                          controller: titleController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(89, 57, 241, 1),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if(value==null || value.isEmpty){
                              return "please enter title";
                            }else{
                              return null;
                            }
                          },
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
                          controller: describeController,
                          maxLines: 4,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(89, 57, 241, 1),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if(value==null || value.isEmpty){
                              return "please enter description";
                            }else{
                              return null;
                            }
                          },
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
                          controller: dateController,
                          readOnly: true,
                          onTap: () async{
                            DateTime? selectedDate = await showDatePicker(
                              context: context, 
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2024), 
                              lastDate: DateTime(2025),
                            );
                            String dateStr = DateFormat.yMMMd().format(selectedDate!);
                            dateController.text= dateStr;
                            setState(() {});
                          },
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.calendar_month_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(89, 57, 241, 1),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if(value==null || value.isEmpty){
                              return "please select date";
                            }else{
                              return null;
                            }
                          },
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          // foregroundDecoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(10),
                          //   color: Color.fromRGBO(89, 57, 241, 1),
                          // ),
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(89, 57, 241, 1),
                          ),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(89, 57, 241, 1),
                              ),
                            ),
                            onPressed: () {
                              bool isValidate = formKey.currentState!.validate();

                              if(isValidate){
                                onSubmit(isEdit,notes);
                                Navigator.of(context).pop();
                              }
                              // else{
                              //   onSubmit(isEdit);
                              // }
                            },
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                   // ),
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
                // const Spacer(),
                // IconButton(
                //   onPressed: (){
                //       setState(() {});
                //   }, 
                //   icon: Icon(Icons.refresh),
                // ),
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
                            return Slidable(
                           direction: Axis.horizontal,
                           closeOnScroll: true,
                            endActionPane: ActionPane(
                              extentRatio: 0.2,
                              motion: const DrawerMotion(),
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // editCard(toDoList[index]);
                                          titleController.text = toDoList[index].title;
                                          describeController.text = toDoList[index].description;
                                          dateController.text = toDoList[index].date;

                                          showBottomSheetDemo(true, toDoList[index]);
                                          showData1();
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(89, 57, 241, 1),
                                            borderRadius:BorderRadius.circular(20),
                                          ),
                                          child: const Icon(
                                          Icons.edit_outlined,
                                          color: Colors.white,
                                          size: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          //deleteCard(toDoList[index]);

                                          deleteCurrentNotes(toDoList[index].notesId!);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(89, 57, 241, 1),
                                            borderRadius:BorderRadius.circular(20),
                                          ),
                                          child: const Icon(
                                          Icons.delete_outline,
                                          color: Colors.white,
                                          size: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                              child: Container(
                                height: 90,
                                width: double.infinity,
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
                                            maxLines: 1,
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
                                            maxLines: 2,
                                            style: const TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400
                                            ),
                                          ),
                                          const Spacer(),
                                          Text(
                                            toDoList[index].date,
                                            maxLines: 2,
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
                                        toDoList[index].done = value!;
                                        setState(() {});
                                      }
                                    ),
                                  ],
                                ),
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
          showBottomSheetDemo(false);
          setState(() {
            
          });
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