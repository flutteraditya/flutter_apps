import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

List notifylst = [
  {
    "date" : "Today",
    "notes":[
      {
        "icon" : Icons.shopping_bag_outlined,
        "massage": "Your checkout is successfull, product is on tne way"
      },
      {
        "icon" : Icons.check,
        "massage": "Appointment request accepted"
      },
      {
        "icon" : Icons.favorite_outline,
        "massage": "Vaccinate your pet timely"
      }
    ]
  },
  {
    "date" : "25 September",
    "notes":[
      {
        "icon" : Icons.shopping_bag_outlined,
        "massage": "Your checkout is successfull, product is on tne way"
      },
      {
        "icon" : Icons.check,
        "massage": "Appointment request accepted"
      },
      {
        "icon" : Icons.shopping_bag_outlined,
        "massage": "Your checkout is successfull, product is on tne way"
      },
      {
        "icon" : Icons.favorite_outline,
        "massage": "Vaccinate your pet timely"
      }
    ]
  },
  {
    "date" : "11 September",
    "notes":[
      {
        "icon" : Icons.shopping_bag_outlined,
        "massage": "Your checkout is successfull, product is on tne way"
      },
      {
        "icon" : Icons.check,
        "massage": "Appointment request accepted"
      },
      {
        "icon" : Icons.favorite_outline,
        "massage": "Vaccinate your pet timely"
      }
    ]
  },
  {
    "date" : "15 August",
    "notes":[
      {
        "icon" : Icons.shopping_bag_outlined,
        "massage": "Your checkout is successfull, product is on tne way"
      },
      {
        "icon" : Icons.favorite_outline,
        "massage": "Vaccinate your pet timely"
      }
    ]
  },
];

class _NotificationPageState extends State<NotificationPage> {
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
                    "Notifications",
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
            const SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: notifylst.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 330,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "${notifylst[index]["date"]}",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        width: 330,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0,8),
                              blurRadius: 16,
                              spreadRadius: -4,
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                            ),
                          ],
                        ),
                        child: ListView.builder(
                          controller: ScrollController(
                            keepScrollOffset: false
                          ),
                          itemCount: notifylst[index]["notes"].length,
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(0),
                          itemBuilder: (context,i){
                            return Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 5
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromRGBO(252, 219, 193, 1),
                                  ),
                                  child: Icon(
                                    notifylst[index]["notes"][i]["icon"],
                                    size: 24,
                                    color: const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                ),
                                const SizedBox(width: 15,),
                                SizedBox(
                                  width: 240,
                                  child: Text(
                                    "${notifylst[index]["notes"][i]["massage"]}",
                                    maxLines: 2,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(31, 32, 41, 1)
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        ),
                      ),
                      const SizedBox(height: 10,)
                    ],
                  );
                } 
              ),
            ),
          ],
        ),
      ),
    );
  }
}