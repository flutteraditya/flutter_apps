import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/bottomnavbar.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

List spLst = [
  {
    "img" : "sp01.png",
    "name" : "Pets"
  },
  {
    "img" : "sp02.png",
    "name" : "Foods"
  },
  {
    "img" : "sp03.png",
    "name" : "Healthy"
  },
  {
    "img" : "sp04.png",
    "name" : "Toys"
  },
  {
    "img" : "sp05.png",
    "name" : "Accessories"
  },
  {
    "img" : "sp06.png",
    "name" : "Cloths"
  }
];

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 170,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(30),
                      bottomStart: Radius.circular(30)
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 60,),
                      SizedBox(
                        width: 330,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello Sarah",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                                Text(
                                  "Find your lovable Pets",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.add_shopping_cart_rounded,
                              size: 25,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 40,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
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
                        hintText: "Search Something Here...",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(194, 195, 204, 1)),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              width: 2, color: Color.fromRGBO(250, 200, 162, 1)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              width: 2, color: Color.fromRGBO(250, 200, 162, 1)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 330,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                //shrinkWrap: true,
                itemCount: spLst.length,
                itemBuilder: (context, i) {
                  return Container(
                    //height: 176,
                    //width: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
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
                    child: Stack(
                      children: [
                        Positioned(
                          //height: 160,
                          child: Container(
                            //height: 220,
                            //width: 150,
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/${spLst[i]["img"]}"),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          child: Container(
                            height: 30,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              color: Color.fromRGBO(245, 245, 247, 1),
                            ),
                            child: Text(
                              "${spLst[i]["name"]}",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatActBtn(),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}