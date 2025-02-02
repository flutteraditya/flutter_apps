import 'package:educoursedemo1/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EduCourse extends StatefulWidget{

  const EduCourse({super.key});

  @override
  State createState()=> _EduCourseState();
}

class _EduCourseState extends State{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 46
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child:  Row(
                children: [
                  SvgPicture.asset(
                    "images/menu.svg",
                    height: 26,
                    width: 26,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "images/bell.svg",
                    height: 26,
                    width: 26,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 39,
              //width: 180,
              child: const Text(
                "Welcome to New",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 26.98,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 53,
              //width: 182,
              child: const Text(
                "Educourse",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 37,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding:const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(28.5)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your Keyword",
                    suffixIcon: Container(
                      height: 27,
                      width: 27,
                      margin: const EdgeInsets.all(16),
                      child: SvgPicture.asset(
                        "images/search.svg",
                        height: 18,
                        width: 18,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.5),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Course For You",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=> const Course(),
                                ),
                              );
                            },
                            child: Container(
                              height: 242,
                              width: 190,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 22,
                                vertical: 20,
                              ),
                              margin: const EdgeInsets.only(
                                right: 20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(197, 4, 98, 1),
                                    Color.fromRGBO(80, 3, 112, 1),
                                  ],
                                ),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    child: Text(
                                      "UX Designer from Scratch.",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 154,
                                    width: 154,
                                    child: Image.asset("images/image1.png"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      
                          Container(
                            height: 242,
                            width: 190,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 20,
                            ),
                            margin: const EdgeInsets.only(
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(0, 77, 228, 1),
                                  Color.fromRGBO(1, 47, 135, 1),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  child: Text(
                                    "Design Thinking The Beginner",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 154,
                                  width: 154,
                                  child: Image.asset("images/image2.png"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Course By Category",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 29,
                      ),
                      height: 65,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              right: 29,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)
                                  ),
                                  child: SvgPicture.asset(
                                    "images/01.svg"
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const SizedBox(
                                  height: 20,
                                  child: Text(
                                    "UI/UX",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(
                              right: 29,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)
                                  ),
                                  child: SvgPicture.asset(
                                    "images/02.svg"
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const SizedBox(
                                  height: 20,
                                  child: Text(
                                    "VISUAL",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(
                              right: 29,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)
                                  ),
                                  child: SvgPicture.asset(
                                    "images/03.svg"
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const SizedBox(
                                  height: 20,
                                  child: Text(
                                    "ILLUSTRATON",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(
                              right: 29,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 36,
                                  width: 36,
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)
                                  ),
                                  child: SvgPicture.asset(
                                    "images/04.svg"
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                const SizedBox(
                                  height: 20,
                                  child: Text(
                                    "PHOTO",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
}