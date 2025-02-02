import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List homes = [
  {
    "img" : "home02.png",
    "name" : "Night Hill Villa",
    "location" : "London,Night Hill",
    "price" : "₹5900",
    "rate" : "4.9"
  },
  {
    "img" : "home03.png",
    "name" : "Night Villa",
    "location" : "London,New Park",
    "price" : "₹4900",
    "rate" : "4.5"
  }
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: Column(
        //shrinkWrap: true,
        children: [
          const SizedBox(height: 60,),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                Text(
                  "Hey Dravid,",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(101, 101, 101, 1),
                  ),
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/profile.png",
                  ),
                  radius: 24,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Text(
              "Let’s find your best \nresidence ",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(0, 0, 0, 1)
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            height: 45,
            width: 345,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                //fillColor: Color.fromRGBO(255, 255, 255, 1),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                hintText: "Search your favourite paradise",
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 24,
                  color: Color.fromRGBO(33, 33, 33, 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          //const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20
            ),
            child: Row(
              children: [
                Text(
                  "Most popular",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1)
                  ),
                ),
                const Spacer(),
                Text(
                  "See All",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(32, 169, 247, 1),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 310,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homes.length,
              itemBuilder: (context,i){
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DetailsPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 305,
                    width: 210,
                    margin: const EdgeInsets.only(left: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 190,
                          height: 195,
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/${homes[i]["img"]}",
                              ),
                            ),
                          ),
                          child: Container(
                            height: 22,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromRGBO(112, 200, 250, 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  color: Color.fromRGBO(251, 227, 12, 1),
                                  size: 16,
                                ),
                                Text(
                                  "${homes[i]["rate"]}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(255, 255, 255, 1)
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                        "${homes[i]["name"]}",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1)
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          "${homes[i]["location"]}",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1)
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text(
                              "${homes[i]["price"]}",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(32, 169, 247, 1),
                              ),
                            ),
                            Text(
                              " /Month",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(72, 72, 72, 1)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20
            ),
            child: Row(
              children: [
                Text(
                  "Nearby your location",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1)
                  ),
                ),
                const Spacer(),
                Text(
                  "More",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(32, 169, 247, 1),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              //height: 120,
              child: ListView.builder(
                itemCount: 2,
                //shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                itemBuilder: (context,i){
                  return Container(
                    height: 100,
                    width: 345,
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/home04.png"
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        SizedBox(
                          width: 230,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Jumeriah Golf Estates Villa",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/map.png",
                                    height: 14,
                                    width: 14,
                                  ),
                                  Text(
                                    "London,Area Plam Jumeriah",
                                    style: GoogleFonts.poppins(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(90, 90, 90, 1)
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/couch.png",
                                    height: 14,
                                    width: 14,
                                  ),
                                  Text(
                                    " 4 Bedrooms  ",
                                    style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(90, 90, 90, 1)
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/bath.png",
                                    height: 14,
                                    width: 14,
                                  ),
                                  Text(
                                    " 5 Bathrooms ",
                                    style: GoogleFonts.poppins(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(90, 90, 90, 1)
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  Text(
                                    "₹ 4500",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(32, 169, 247, 1),
                                    ),
                                  ),
                                  Text(
                                    " /Month",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(72, 72, 72, 1)
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
          //SizedBox(height: 10,)
        ],
      ),
    );
  }
}