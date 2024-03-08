import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Course extends StatefulWidget{

  const Course({super.key});

  @override
  State createState()=> _CourseState();
}

class _CourseState extends State{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color.fromRGBO(197, 4, 98, 1),
            Color.fromRGBO(80, 3, 112, 1),
            Color.fromRGBO(80, 3, 112, 1),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 26,
              width: 26,
              margin: const EdgeInsets.only(
                top: 47,
                left: 20,
              ),
              child:GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 38,
              ),
              child: Column(
                  children: [
                    const Text(
                      "UX Designer from Scratch.",
                      style: TextStyle(
                        fontSize: 32.61,
                        fontWeight: FontWeight.w500,
                        height: 1,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Basic guideline & tips & tricks for how to become a UX designer easily.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: Color.fromRGBO(228, 205, 225, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Row(
                      children:[
                        Container(
                          height: 34,
                          width: 34,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 82, 178, 1),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white
                            ),
                          ),
                          child: SvgPicture.asset("images/person.svg"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Author: ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            //height: 1.5,
                            color: Color.fromRGBO(190, 154, 197, 1),
                          ),
                        ),
                        const Text(
                          "Jenny",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            //height: 1.5,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            //height: 1.5,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 146, 0, 1),
                          size: 15,
                        ),
                        const Text(
                          "(20 review)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            //height: 1.5,
                            color: Color.fromRGBO(190, 154, 197, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                margin: const EdgeInsets.only(top: 30),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38)
                  ),
                ),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Container(
                      width: double.infinity,
                      height: 70,
                      margin: const EdgeInsets.only(
                        right: 30,
                        left: 30,
                        bottom: 10,
                        top: 10,
                      ),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 40,
                            spreadRadius: 0,
                            offset: Offset(0, 8)
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 46,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 11,
                              vertical: 18
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(230, 239, 239, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: SvgPicture.asset("images/youtube.svg"),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Introduction",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    //height: 1.5,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  maxLines: 1,
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text ... ",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    //height: 1.5,
                                    color: Color.fromRGBO(143, 143, 143, 1),
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            ),
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
    );
  }
}