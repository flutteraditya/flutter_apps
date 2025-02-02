import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

List dayslst = [
  {
    "date" : 6,
    "day" : "Fri",
    "isavail" : true,
    "time" : {
      "total" : [12.00,15.00,17.00],
      "isavail" : [true,false,true],
    }
  },
  {
    "date" : 7,
    "day" : "Sat",
    "isavail" : true,
    "time" : {
      "total" : [06.00,17.00,19.00],
      "isavail" : [true,false,false],
    }
  },
  {
    "date" : 8,
    "day" : "Sun",
    "isavail" : false,
    "time" : {
      "total" : [09.00,16.00,18.00],
      "isavail" : [false,false,false],
    }
  },
  {
    "date" : 9,
    "day" : "Mon",
    "isavail" : true,
    "time" : {
      "total" : [12.00,15.00,17.00],
      "isavail" : [true,false,true],
    }
  },
  {
    "date" : 10,
    "day" : "Tue",
    "isavail" : false,
    "time" : {
      "total" : [08.00,14.00,18.00],
      "isavail" : [false,false,false],
    }
  },
];

int dateIndex = -1;
int timeIndex = -1;

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(245, 146, 69, 1)
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
              width: double.infinity,
            ),
            Container(
              width: 330,
              height: 26,
              margin: const EdgeInsets.symmetric(horizontal: 20),
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
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 16,
                            spreadRadius: -4,
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color.fromRGBO(245, 146, 69, 1),
                        size: 13,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Veterinary",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: 330,
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: Color.fromRGBO(22, 34, 51, 0.04),
                  ),
                  BoxShadow(
                    offset: Offset(0,20),
                    blurRadius: 25,
                    spreadRadius: 0,
                    color: Color.fromRGBO(22, 34, 51, 0.1)
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage("assets/dd01.png"),
                  fit: BoxFit.cover
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                //height: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 330,
                      child: Text(
                        "Dr. Anna Jhonason",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      width: 330,
                      child: Text(
                        "Veterinary Behavioral",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(194, 195, 204, 1)
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0,11),
                                blurRadius: 25,
                                spreadRadius: 0,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                              BoxShadow(
                                offset: Offset(0,4),
                                blurRadius: 8,
                                spreadRadius: -4,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Experience",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(31, 32, 41, 1)
                                ),
                              ),
                              Text(
                                "11 years",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(245, 146, 69, 1)
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0,11),
                                blurRadius: 25,
                                spreadRadius: 0,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                              BoxShadow(
                                offset: Offset(0,4),
                                blurRadius: 8,
                                spreadRadius: -4,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Price",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(31, 32, 41, 1)
                                ),
                              ),
                              Text(
                                "₹ 250",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(245, 146, 69, 1)
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0,11),
                                blurRadius: 25,
                                spreadRadius: 0,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                              BoxShadow(
                                offset: Offset(0,4),
                                blurRadius: 8,
                                spreadRadius: -4,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Location",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(31, 32, 41, 1)
                                ),
                              ),
                              Text(
                                "2.5 km",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(245, 146, 69, 1)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 330,
                      child: Text(
                        "About",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,                         
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      width: 330,
                      child: Text(
                        "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                        maxLines: 2,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: 330,
                      child: Row(
                        children: [
                          Text(
                            "Available Days",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,                         
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.calendar_today_outlined,
                            size: 15,
                            color: Color.fromRGBO(245, 146, 69, 1),
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            "October, 2023",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(194, 195, 204, 1),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      width: 330,
                      height: 36,
                      child: ListView.builder(
                        itemCount: dayslst.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,i){
                          return GestureDetector(
                            onTap: () {
                              dateIndex = i;
                              timeIndex = -1;
                              setState(() {
                                
                              });
                            },
                            child: Container(
                              height: 36,
                              width: 60,
                              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                ),
                                color: ((i != dateIndex) && (dayslst[i]["isavail"])) ?
                                Colors.white :
                                const Color.fromRGBO(245, 146, 69, 1),
                              ),
                              child: Text(
                                "${dayslst[i]["day"]}, ${dayslst[i]["date"]}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: ((i != dateIndex) && (dayslst[i]["isavail"])) ?
                                  const Color.fromRGBO(49, 29, 14, 1) :
                                  Colors.white,
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: 330,
                      child: Text(
                        "Available Time",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,                         
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    (dateIndex >= 0) ? SizedBox(
                      width: 330,
                      height: 36,
                      child: ListView.builder(
                        itemCount: dayslst[dateIndex]["time"]["total"].length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,i){
                          return GestureDetector(
                            onTap: () {
                              timeIndex = i;
                              setState(() {
                                
                              });
                            },
                            child: Container(
                              height: 36,
                              width: 60,
                              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(245, 146, 69, 1),
                                ),
                                color: ((i != timeIndex) && (dayslst[dateIndex]["time"]["isavail"][i])) ? 
                                Colors.white :
                                const Color.fromRGBO(245, 146, 69, 1),
                              ),
                              child: Text(
                                "${dayslst[dateIndex]["time"]["total"][i]}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: ((i != timeIndex) && (dayslst[dateIndex]["time"]["isavail"][i])) ? 
                                  const Color.fromRGBO(49, 29, 14, 1) :
                                  Colors.white,
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ): const SizedBox(),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const DashboardPage(),
                        //   ),
                        // );
                      }, 
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(330, 35),
                        padding: const EdgeInsets.symmetric(
                          vertical: 7,
                          horizontal: 16
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: const Color.fromRGBO(252, 219, 193, 1)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.map_outlined,
                            size: 15,
                            color: Color.fromRGBO(163, 97, 46, 1),
                          ),
                          Text(
                            "See Location",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(163, 97, 46, 1),
                            ),
                          ),
                        ],
                      ), 
                    ),
                    const SizedBox(height: 5,),
                    ElevatedButton(
                      onPressed: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const DashboardPage(),
                        //   ),
                        // );
                      }, 
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(330, 35),
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
                        "Book Now",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 1)
                        ),
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