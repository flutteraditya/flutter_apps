import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

List trainlst = [
  {
    "img" : "train01.png",
    "title" : "Obedience Courses",
    "subtitle" : "By Jhon Smith",
    "rating" : "4.9",
    "ratingcount" : "335"
  },
  {
    "img" : "train02.png",
    "title" : "Specialty Classes & Workshops",
    "subtitle" : "By Duke Fuzzington",
    "rating" : "5.0",
    "ratingcount" : "500"
  },
  {
    "img" : "train03.png",
    "title" : "Puppy Kinderganten and Playgroups",
    "subtitle" : "By Sir Fluffington",
    "rating" : "5.0",
    "ratingcount" : "500"
  },
  {
    "img" : "train04.png",
    "title" : "Canine Good Citizen Test",
    "subtitle" : "By Baron Fuzzypaws",
    "rating" : "4.8",
    "ratingcount" : "220"
  },
  {
    "img" : "train05.png",
    "title" : "Theraphy Dogs",
    "subtitle" : "By Duke Fuzzington",
    "rating" : "5.0",
    "ratingcount" : "500"
  },
];
class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 20
        ),
        child: Column(
          children: [
            const SizedBox(height: 50,width: double.infinity,),
            SizedBox(
              width: 330,
              height: 56,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(245, 146, 69, 1),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0,8),
                            blurRadius: 16,
                            spreadRadius: -4,
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        size: 13,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Training",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 25,),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 330,
                child: ListView.builder(
                  itemCount: trainlst.length,
                  //shrinkWrap: true,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context,i){
                    return Container(
                      height: 125,
                      width: 330,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 16,
                            spreadRadius: -4,
                            color: Color.fromRGBO(22, 34, 51, 0.08)
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(245, 245, 247, 1),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 11),
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                ),
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                  spreadRadius: -4,
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                ),
                              ],
                              image: DecorationImage(image: AssetImage("assets/${trainlst[i]["img"]}"),),
                            ),
                            child: const Icon(
                              Icons.play_circle_outline_outlined,
                              size: 25,
                              color: Color.fromRGBO(255, 255, 255, 1)
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "${trainlst[i]["title"]}",
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(31, 32, 41, 1),
                                    height: 1.5
                                  ),
                                ),
                                Text(
                                  "${trainlst[i]["subtitle"]}",
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(31, 32, 41, 1),
                                    height: 1.8
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star_outline_rounded,
                                      color: Color.fromRGBO(247, 164, 100, 1),
                                      size: 15,
                                    ),
                                    const SizedBox(width: 5,),
                                    Text(
                                      "${trainlst[i]["rating"]} ( ${trainlst[i]["ratingcount"]} )",
                                      maxLines: 1,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(194, 195, 204, 1),
                                        height: 1.8
                                      ),
                                    ),
                                  ],
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