import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/bottomnavbar.dart';
import 'package:pet_care_app/view/doctordetail.dart';

class VeterinaryPage extends StatefulWidget {
  const VeterinaryPage({super.key});

  @override
  State<VeterinaryPage> createState() => _VeterinaryPageState();
}

List doctorlst = [
  {
    "img" : "v01.png",
    "name" : "Dr. Anna Johanson",
    "post" : "Veterinary Behavioral",
    "rating" : "4.8",
    "distance" : "1"
  },
  {
    "img" : "v02.png",
    "name" : "Dr. Vernon Chwe",
    "post" : "Veterinary Surgery",
    "rating" : "4.9",
    "distance" : "1.5"
  },
  {
    "img" : "v03.png",
    "name" : "Dr. Maria Nai",
    "post" : "Veterinary Dentist",
    "rating" : "4.9",
    "distance" : "2.5"
  },
];

List serviceslst = [
  {
    "img" : "vs01.png",
    "name" : "Vaccinations",
  },
  {
    "img" : "vs02.png",
    "name" : "Operations",
  },
  {
    "img" : "vs03.png",
    "name" : "Behaviorals",
  },
  {
    "img" : "vs04.png",
    "name" : "Dentistry",
  }
];

class _VeterinaryPageState extends State<VeterinaryPage> {
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
              height: 26,
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 15,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    "London, UK",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                      height: 2
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 100,
              width: 330,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
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
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Lets Find Specialist \nDoctor for Your Pet!",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1)
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
                          offset: Offset(0, 11),
                          spreadRadius: 0,
                          blurRadius: 25,
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                        ),
                        BoxShadow(
                          offset: Offset(0, 4),
                          spreadRadius: -4,
                          blurRadius: 8,
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage("assets/v.png"),
                      ),
                    ),
                  ),
                ],
              ),
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
            SizedBox(
              height: 80,
              width: 330,
              child: ListView.builder(
                itemCount: serviceslst.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(0),
                itemBuilder: (context,i){
                  return Container(
                    margin: const EdgeInsets.only(right: 10,left: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:AssetImage("assets/${serviceslst[i]["img"]}"),
                          radius: 30,
                        ),
                        const Spacer(),
                        Text(
                          "${serviceslst[i]["name"]}",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(245, 146, 69, 1)
                          ),
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: 330,
              child: Text(
                "Best Specialists Nearby",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1)
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: SizedBox(
                width: 330,
                child: ListView.builder(
                  itemCount: doctorlst.length,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (context,i){
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const DoctorDetails(), 
                          ),
                        );
                      },
                      child: Container(
                        height: 120,
                        width: 330,
                        margin: const EdgeInsets.only(bottom: 10),
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
                                image: DecorationImage(image: AssetImage("assets/${doctorlst[i]["img"]}")),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${doctorlst[i]["name"]}",
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: const Color.fromRGBO(0, 0, 0, 1)
                                  ),
                                ),
                                const SizedBox(height: 5,),
                                Text(
                                  "${doctorlst[i]["post"]}",
                                  maxLines: 1,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(194, 195, 204, 1)
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star_outline_rounded,
                                      size: 16,
                                      color: Color.fromRGBO(248, 182, 131, 1),
                                    ),
                                    Text(
                                      "${doctorlst[i]["rating"]}",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(194, 195, 204, 1)
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    const Icon(
                                      Icons.location_on_outlined,
                                      size: 16,
                                      color: Color.fromRGBO(248, 182, 131, 1),
                                    ),
                                    Text(
                                      "${doctorlst[i]["distance"]} km",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(194, 195, 204, 1)
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatActBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}