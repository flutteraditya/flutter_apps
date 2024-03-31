import 'package:flutter/material.dart';

class CoursesList extends StatefulWidget {
  const CoursesList({super.key});

  @override
  State<CoursesList> createState() => _CoursesListState();
}

class _CoursesListState extends State<CoursesList> {
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
                child: Text("User List"),
              ),
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        
      ),
    );
  }
}