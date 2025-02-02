import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/bottomnavbar.dart';
import 'package:pet_care_app/view/grooming.dart';
import 'package:pet_care_app/view/notifications.dart';
import 'package:pet_care_app/view/shop.dart';
import 'package:pet_care_app/view/training.dart';
import 'package:pet_care_app/view/veterinary.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //width: 330,
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SizedBox(
          width: 330,
          child: Column(
            children: [
              const SizedBox(height: 50,),
              SizedBox(
                width: 330,
                height: 56,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/profileimg.png"),
                      radius: 30,
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 23,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hello, Sarah",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Container(
                          height: 23,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Good Morning!",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(194, 195, 204, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=> const NotificationPage(),
                          ),
                        );
                      },
                      child: SvgPicture.asset(
                        "assets/icons/bell.svg",
                        height: 25,
                        width: 25,
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
              Container(
                height: 100,
                width: 330,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(22, 34, 51, 0.08),
                      offset: Offset(0, 8),
                      blurRadius: 16,
                      spreadRadius: -4,
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
                          "In Love With Pets?",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            height: 2
                          ),
                        ),
                        Text(
                          "Get all what you need for them",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(250, 200, 162, 1)
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 67,
                      width: 71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/dash01.png",
                          ),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                            offset: Offset(0, 11),
                            blurRadius: 25,
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                            offset: Offset(0, 4),
                            blurRadius: 8,
                            spreadRadius: -4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(0),
                  children: [
                    SizedBox(
                      height: 20,
                      width: 330,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Category",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
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
                      height: 90,
                      width: 330,
                      child: Row(
                        //scrollDirection: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const VeterinaryPage(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage("assets/profileimg01.png"),
                                  radius: 30,
                                ),
                                const SizedBox(height: 10,),
                                Text(
                                  "Veterinary",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const GroomingPage(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage("assets/profileimg02.png"),
                                  radius: 30,
                                ),
                                const SizedBox(height: 10,),
                                Text(
                                  "Grooming",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const ShopPage(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage("assets/profileimg03.png"),
                                  radius: 30,
                                ),
                                const SizedBox(height: 10,),
                                Text(
                                  "Pet Store",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const TrainingPage(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage("assets/profileimg04.png"),
                                  radius: 30,
                                ),
                                const SizedBox(height: 10,),
                                Text(
                                  "Training",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 20,
                      width: 330,
                      child: Text(
                        "Event",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          height: 2
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 130,
                      width: 330,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                            offset: Offset(0, 8),
                            blurRadius: 16,
                            spreadRadius: -4,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Find and Join in Special \nEvents For Your Pets!",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){
                                }, 
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(90, 35),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 7,
                                    horizontal: 16
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                                ),
                                child: Text(
                                  "See More",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(255, 255, 255, 1)
                                  ),
                                ), 
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 94,
                            width: 96,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/dash02.png",
                                ),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  offset: Offset(0, 11),
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                  spreadRadius: -4,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 20,
                      width: 330,
                      child: Text(
                        "Community",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          height: 2
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 130,
                      width: 330,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                            offset: Offset(0, 8),
                            blurRadius: 16,
                            spreadRadius: -4,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Connect and share with \ncommunities! ",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){
                                }, 
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(90, 35),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 7,
                                    horizontal: 16
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                                ),
                                child: Text(
                                  "See More",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(255, 255, 255, 1)
                                  ),
                                ), 
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 94,
                            width: 96,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/dash03.png",
                                ),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  offset: Offset(0, 11),
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                  spreadRadius: -4,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: const FloatActBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}