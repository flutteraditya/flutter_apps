import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

List homeInfo = [
  {
    "img" : "couch.png",
    "name" : "Bedrooms",
    "quantity" : "5"
  },
  {
    "img" : "bath.png",
    "name" : "Bathrooms",
    "quantity" : "5"
  },
  {
    "img" : "size.png",
    "name" : "Square ft",
    "quantity" : "7,000 sq ft"
  }
];

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 65,),
          Row(
            children: [
              const SizedBox(width: 25,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
              ),
              const Spacer(),
              Text(
                "Details",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              const Spacer(),
              const SizedBox(width: 40,),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            width: 350,
            height: 245,
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/details01.png",
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
                    "4.9",
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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Night Hill Villa",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        height: 1
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "London,Night Hill",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(72, 72, 72, 1),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "₹ 5900",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(32, 169, 247, 1),
                  ),
                ),
                Text(
                  " /Month",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(72, 72, 72, 1),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              //height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                //shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                children: [
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homeInfo.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 140,
                          width: 110,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                "assets/${homeInfo[index]["img"]}",
                                height: 30,
                                width: 30,
                              ),
                              Text(
                                "${homeInfo[index]["name"]}",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)
                                ),
                              ),
                              Text(
                                "${homeInfo[index]["quantity"]}",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 75,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(
                    //     builder: (context) => const HomePage(),
                    //   ),
                    // );
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(32, 169, 247, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    fixedSize: const Size(220, 55),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ), 
                ),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}