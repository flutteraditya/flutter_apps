import 'package:flutter/material.dart';
import 'package:music_app/player.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: ListView(
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
                const SizedBox(
                  child: Text(
                    "A.L.O.N.E",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1),
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
                    child: const Text(
                      "Subscribe",
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(19, 19, 19, 1),
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
          const Row(
            children: [
              SizedBox(
                width: 20,
                height: 60,
              ),
              Text(
                "Discography",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(255, 46, 0, 1),
                ),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(248, 162, 69, 1),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 181,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/gall01.png"
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "Dead inside",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      const Text(
                        "2020",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(132, 125, 125, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
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
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/gall02.png"
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text(
                          "Alone",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        const Text(
                          "2023",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(132, 125, 125, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/gall03.png"
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "Heartless",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      const Text(
                        "2023",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(132, 125, 125, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
                height: 60,
              ),
              Text(
                "Popular singles",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(203, 200, 200, 1)
                ),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(248, 162, 69, 1),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          Container(
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
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/gall04.png"
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Text(
                      "We Are Chaos",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(203, 200, 200, 1),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2023",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(132, 125, 125, 1),
                          ),
                        ),
                        Text(
                          " * ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "Easy Living",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(132, 125, 125, 1),
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
          ),
          Container(
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
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/gall05.png"
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Text(
                      "Smile",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(203, 200, 200, 1),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2023",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(132, 125, 125, 1),
                          ),
                        ),
                        Text(
                          " * ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "Berrechid",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(132, 125, 125, 1),
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
          ),
        ],
      ),
    );
  }
}