import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plantsapp/detailscreenpage.dart';
// import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: ListView(
        children: [
          Row(
            children: [
              const Spacer(),
              Image.asset(
                "assets/png/design03.png",
                height: 80,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            width: 360,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const SizedBox(
                  width: 180,
                  child: Text(
                    "Find your favorite plants",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 16.1,
                        offset: Offset(0, 4)
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/png/bag00.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,width: 360,),
          // Container(
          //   height: 110,
          //   margin: const EdgeInsets.only(
          //     left: 20,
          //   ),
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 3,
          //     itemBuilder: (context,index){
          //       return Container(
          //         height: 108,
          //         width: 310,
          //         margin: const EdgeInsets.only(
          //           right: 15,
          //         ),
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: const Color.fromRGBO(204, 231, 185, 1),
          //         ),
          //         child: const Column(
          //           children: [
          //             Text(
          //               "30% OFF",
          //               style: TextStyle(
          //                 fontSize: 24,
          //                 fontWeight: FontWeight.w600
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     }
          //   ),
          // ),
          // ImageSlideshow(
          //   height: 110,
          //   width: 310,
          //   children: [
          //     Container(
          //       height: 108,
          //       width: 310,
          //       margin: const EdgeInsets.only(
          //         right: 15,
          //       ),
          //       padding: const EdgeInsets.symmetric(horizontal: 30),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10),
          //         color: const Color.fromRGBO(204, 231, 185, 1),
          //       ),
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.end,
          //         children: [
          //           const Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 "30% OFF",
          //                 style: TextStyle(
          //                   fontSize: 24,
          //                   fontWeight: FontWeight.w600,
          //                   color: Color.fromRGBO(0, 0, 0, 1)
          //                 ),
          //               ),
          //               Text(
          //                 "02-23 April",
          //                 style: TextStyle(
          //                   fontSize: 14,
          //                   fontWeight: FontWeight.w400,
          //                   color: Color.fromRGBO(0, 0, 0, 0.6)
          //                 ),
          //               ),
          //             ],
          //           ),
          //           const Spacer(),
          //           Image.asset(
          //             "assets/png/image02.png",
          //             height: 108,
          //             width: 120,
          //           ),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       height: 108,
          //       width: 310,
          //       margin: const EdgeInsets.only(
          //         right: 15,
          //       ),
          //       padding: const EdgeInsets.symmetric(horizontal: 30),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10),
          //         color: const Color.fromRGBO(204, 231, 185, 1),
          //       ),
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.end,
          //         children: [
          //           const Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 "30% OFF",
          //                 style: TextStyle(
          //                   fontSize: 24,
          //                   fontWeight: FontWeight.w600,
          //                   color: Color.fromRGBO(0, 0, 0, 1)
          //                 ),
          //               ),
          //               Text(
          //                 "02-23 April",
          //                 style: TextStyle(
          //                   fontSize: 14,
          //                   fontWeight: FontWeight.w400,
          //                   color: Color.fromRGBO(0, 0, 0, 0.6)
          //                 ),
          //               ),
          //             ],
          //           ),
          //           const Spacer(),
          //           Image.asset(
          //             "assets/png/image02.png",
          //             height: 108,
          //             width: 120,
          //           ),
          //         ],
          //       ),
          //     ),
          //     Container(
          //       height: 108,
          //       width: 310,
          //       margin: const EdgeInsets.only(
          //         right: 15,
          //       ),
          //       padding: const EdgeInsets.symmetric(horizontal: 30),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10),
          //         color: const Color.fromRGBO(204, 231, 185, 1),
          //       ),
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.end,
          //         children: [
          //           const Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 "30% OFF",
          //                 style: TextStyle(
          //                   fontSize: 24,
          //                   fontWeight: FontWeight.w600,
          //                   color: Color.fromRGBO(0, 0, 0, 1)
          //                 ),
          //               ),
          //               Text(
          //                 "02-23 April",
          //                 style: TextStyle(
          //                   fontSize: 14,
          //                   fontWeight: FontWeight.w400,
          //                   color: Color.fromRGBO(0, 0, 0, 0.6)
          //                 ),
          //               ),
          //             ],
          //           ),
          //           const Spacer(),
          //           Image.asset(
          //             "assets/png/image02.png",
          //             height: 108,
          //             width: 120,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
            CarouselSlider.builder(
              itemCount: 3, 
              itemBuilder: (context,i,j){
                return Container(
                  height: 108,
                  width: 310,
                  margin: const EdgeInsets.only(
                    right: 15,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(204, 231, 185, 1),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "30% OFF",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 0, 0, 1)
                            ),
                          ),
                          Text(
                            "02-23 April",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 0.6)
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        "assets/png/image02.png",
                        height: 108,
                        width: 120,
                      ),
                    ],
                  ),
                );
              }, 
              options: CarouselOptions(
                height: 110,
              ),
            ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[800]
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[400]
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[400]
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[400]
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              // shrinkWrap: true,
              // scrollDirection: Axis.vertical,
              // padding: const EdgeInsets.only(left: 20),
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 360,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Indoor",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                SizedBox(
                  height: 200,
                  width: 360,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context)=> const DetailScreenPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 190,
                          width: 140,
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/png/image03.png",
                                height: 112,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Snake Plants",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(48, 48, 48, 1),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: [
                                  const Text(
                                    "₹350",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(62, 102, 24, 1)
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 26,
                                    width: 26,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      color: const Color.fromRGBO(237, 238, 235, 1),
                                    ),
                                    child: Image.asset(
                                      "assets/png/bag02.png",
                                      height: 14,
                                    ),
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
                const SizedBox(height: 20,),
                Container(
                  //margin: const EdgeInsets.only(right: 20),
                  width: 360,
                  height: 1,
                  color: const Color.fromRGBO(204, 211, 196, 1
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 360,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Outdoor",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                SizedBox(
                  height: 200,
                  width: 360,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 190,
                        width: 140,
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/png/image03.png",
                              height: 112,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Snake Plants",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                const Text(
                                  "₹350",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(62, 102, 24, 1)
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(26),
                                    color: const Color.fromRGBO(237, 238, 235, 1),
                                  ),
                                  child: Image.asset(
                                    "assets/png/bag02.png",
                                    height: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
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