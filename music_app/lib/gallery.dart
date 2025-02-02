import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/bottomnavbar.dart';
import 'package:music_app/player.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

List songs = [
  {
    "img" : "gall01.png",
    "name" : "Dead inside",
    "year" : "2020"
  },
  {
    "img" : "gall02.png",
    "name" : "Alone",
    "year" : "2023"
  },
  {
    "img" : "gall03.png",
    "name" : "Heartless",
    "year" : "2023"
  },
];

List popular = [
  {
    "img" : "gall04.png",
    "name" : "We Are Chaos",
    "year" : "2023",
    "album" : "Easy Living"
  },
  {
    "img" : "gall05.png",
    "name" : "Smile ",
    "year" : "2023",
    "album" : "Berrechid"
  }
];

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: ListView(
        padding: const EdgeInsets.all(0),
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity,),
          Container(
            height: 370,
            //width: double.infinity,
            padding: const EdgeInsets.only(left: 20),
            //margin: EdgeInsets.all(0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/galleryimg.png",),
              ),
            ),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 225,width: 400,),
                SizedBox(
                  child: Text(
                    "A.L.O.N.E",
                    style: GoogleFonts.inter(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context, 
                      //   MaterialPageRoute(
                      //     builder: (context) => const GalleryPage(),
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 40),
                      backgroundColor: const Color.fromRGBO(255, 46, 0, 1),
                      foregroundColor: const Color.fromRGBO(19, 19, 19, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "Subscribe",
                      style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(19, 19, 19, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 7,
                width: 21,
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 61, 0, 1),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              Container(
                height: 7,
                width: 7,
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(159, 159, 159, 1),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              Container(
                height: 7,
                width: 7,
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(159, 159, 159, 1),
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
                height: 60,
              ),
              Text(
                "Discography",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 46, 0, 1),
                ),
              ),
              const Spacer(),
              Text(
                "See all",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(248, 162, 69, 1),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 181,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context,i){
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PlayerPage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/${songs[i]["img"]}"
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "${songs[i]["name"]}",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "${songs[i]["year"]}",
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(132, 125, 125, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
                height: 60,
              ),
              Text(
                "Popular singles",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(203, 200, 200, 1)
                ),
              ),
              const Spacer(),
              Text(
                "See all",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(248, 162, 69, 1),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          ListView.builder(
            itemCount: popular.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            itemBuilder: (context,i) {
              return Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 10,
                  bottom: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/${popular[i]["img"]}"
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5,),
                        Text(
                          "${popular[i]["name"]}",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${popular[i]["year"]}",
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(132, 125, 125, 1),
                              ),
                            ),
                            Text(
                              " * ",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(203, 200, 200, 1),
                              ),
                            ),
                            Text(
                              "${popular[i]["album"]}",
                              style: GoogleFonts.inter(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(132, 125, 125, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 70,
                      width: 65,
                      child: IconButton(
                        onPressed: () {
                          
                        },
                        icon: const Icon(
                          Icons.more_vert,
                          color: Color.fromRGBO(217, 217, 217, 1)
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBarPage(),
    );
  }
}