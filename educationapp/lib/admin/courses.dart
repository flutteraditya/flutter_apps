import 'package:flutter/material.dart';

class CoursesList extends StatefulWidget {
  const CoursesList({super.key});

  @override
  State<CoursesList> createState() => _CoursesListState();
}

class _CoursesListState extends State<CoursesList> {

  void addCourseBottomSheet(){
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      context: context, 
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            //bottom: MediaQuery.of(context).viewInsets.bottom
          ),
          child: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    "Add Course",
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "course name",
                        label: const Text("Enter Course Name"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "batch1 name",
                        label: const Text("Enter Batch1"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "batch2 name",
                        label: const Text("Enter Batch2"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "batch3 name",
                        label: const Text("Enter Batch3"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "batch4 name (optional)",
                        label: const Text("Enter Batch4 (optional)"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "path",
                        label: const Text("Enter Image URL"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        
                        hintText: "course fees",
                        label: const Text("Enter Course Amount"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.black,
                        fixedSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)

                        ),
                      ),
                      child: const Text("Submit")
                    ),
                    const SizedBox(height: 20,),
                  ],
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
      appBar: AppBar(
        title: const Text("Courses"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            
            return GestureDetector(
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child: const Text("User List"),
              ),
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          addCourseBottomSheet();
        },
        label: const Text("Add Course"),
        icon: const Icon(Icons.add_outlined),
      ),
    );
  }
}