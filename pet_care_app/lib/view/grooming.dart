import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/bottomnavbar.dart';

class GroomingPage extends StatefulWidget {
  const GroomingPage({super.key});

  @override
  State<GroomingPage> createState() => _GroomingPageState();
}

List serviceslst = [
  {
    "img" : "groom02.png",
    "title" : "Bathing & Drying"
  },
  {
    "img" : "groom03.png",
    "title" : "Hair Triming"
  },
  {
    "img" : "groom04.png",
    "title" : "Nail Trimming"
  },
  {
    "img" : "groom05.png",
    "title" : "Ear Cleaning"
  },
  {
    "img" : "groom06.png",
    "title" : "Teeth Brushing"
  },
  {
    "img" : "groom07.png",
    "title" : "Flea Treatment"
  }
];

class _GroomingPageState extends State<GroomingPage> {
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
                    "Grooming",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 25,),
                ],
              ),
            ),
            ImageSlideshow(
              height: 100,
              width: 330,
              indicatorRadius: 0,
              isLoop: true,
              children: [
                Container(
                  height: 100,
                  width: 330,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 16,
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "60% OFF",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(245, 245, 247, 1),
                              //height: 1,
                            ),
                          ),
                          Text(
                            "On hair & spa treatment",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(245, 245, 247, 1),
                              //height: 1,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0,11),
                              spreadRadius: 0,
                              blurRadius: 25,
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                            ),
                            BoxShadow(
                              offset: Offset(0,4),
                              spreadRadius: -4,
                              blurRadius: 8,
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage("assets/groom01.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 330,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 16,
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "60% OFF",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(245, 245, 247, 1),
                              //height: 1,
                            ),
                          ),
                          Text(
                            "On hair & spa treatment",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(245, 245, 247, 1),
                              //height: 1,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0,11),
                              spreadRadius: 0,
                              blurRadius: 25,
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                            ),
                            BoxShadow(
                              offset: Offset(0,4),
                              spreadRadius: -4,
                              blurRadius: 8,
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                            ),
                          ],
                          image: const DecorationImage(
                            image: AssetImage("assets/groom01.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 40,
              width: 330,
              child: TextField(
                cursorColor: const Color.fromRGBO(245, 146, 69, 1),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIconColor: const Color.fromRGBO(245, 146, 69, 1),
                  suffixIcon: const Icon(
                    Icons.search_rounded,
                    size: 25,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  hintText: "search",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(194, 195, 204, 1)
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 0
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromRGBO(250, 200, 162, 1)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromRGBO(250, 200, 162, 1)
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 20,
              width: 330,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Our Services",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                      height: 2
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                      height: 2
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: SizedBox(
                width: 330,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ), 
                  padding: const EdgeInsets.all(0),
                  itemCount: serviceslst.length,
                  itemBuilder: (context,i){
                    return Container(
                      height: 170,
                      width: 155,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 16,
                            spreadRadius: -4,
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 16,
                                  spreadRadius: -4,
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                ),
                              ],
                              image: DecorationImage(
                                image: AssetImage("assets/${serviceslst[i]["img"]}"),
                              ),
                            ),
                          ),
                          Text(
                            "${serviceslst[i]["title"]}",
                            maxLines: 1,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(49, 29, 14, 1),
                              height: 2
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: const FloatActBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}