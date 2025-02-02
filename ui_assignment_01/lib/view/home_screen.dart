
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_01/view/navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = Get.height;
  double width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width*.06,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height*.06,),
            SizedBox(
              width: Get.width,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Hi Ehi,",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 129,137,154),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.notifications_outlined),
                    ),
                ],
              ),
            ),
            const Text(
              "1,234.00",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://media.istockphoto.com/id/1471401435/vector/round-icon-of-indian-flag.jpg?s=612x612&w=0&k=20&c=kXy7vTsyhEycfrQ9VmI4FpfBFX2cMtQP5XIvTdU8xDE="),
                  radius: 10,
                ),
                SizedBox(width: 5,),
                Text(
                  "GHS",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Color.fromARGB(255, 129,137,154),
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
            SizedBox(
              height: height*0.03,
            ),
            Expanded(
              child: ListView(
                //shrinkWrap: T,
                children: [
                  const Text(
                    "Here are some things you can do",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 129,137,154),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: width*.41,
                        width: width*.41,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255,246,245,254),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.mobile_screen_share_outlined),
                            Text(
                              "Pay Someone",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            Text(
                              "To wallet, bank or\nmobile number",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Color.fromARGB(255, 129,137,154),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: width*.41,
                        width: width*.41,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255,218,234,218)
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.mobile_screen_share_outlined),
                            Text(
                              "Request money",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            Text(
                              "Request money from\nOroboPay users",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Color.fromARGB(255, 129,137,154),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: width*.06,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: width*.41,
                        width: width*.41,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255,255,249,242),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.mobile_screen_share_outlined),
                            Text(
                              "Buy airtime",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            Text(
                              "Top-up or send\nairtime across Africa",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Color.fromARGB(255, 129,137,154),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: width*.41,
                        width: width*.41,
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255,243,244,246)
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.wallet_outlined),
                            Text(
                              "Pay bill",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            Text(
                              "Zero transaction fees\nwhen you pay",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Color.fromARGB(255, 129,137,154),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height*0.04,
                  ),
                  const Text(
                    "Your favorites people",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 129,137,154),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: height*.13,
                    child: ListView(
                      padding: const EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          height:  height*.11,
                          width: height*.10,
                          child: const Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Positioned(
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color.fromARGB(255, 230,232,241),
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.grey,
                                  ),
                                ),
                              ) ,
                              Positioned(
                                bottom: 20,
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   top: height*.05,
                              //   right: 5,
                              //   child:const CircleAvatar(
                              //     radius: 10,
                              //     backgroundColor: Colors.green,
                              //   ) 
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height:  height*.11,
                          width: height*.10,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              const Positioned(
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color.fromARGB(255, 230,232,241),
                                ),
                              ) ,
                              const Positioned(
                                bottom: 20,
                                child: Text(
                                  "Grace L.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              Positioned(
                                top: height*.04,
                                right: 10,
                                child:const CircleAvatar(
                                  radius: 10,
                                  backgroundImage: NetworkImage("https://media.istockphoto.com/id/1471401435/vector/round-icon-of-indian-flag.jpg?s=612x612&w=0&k=20&c=kXy7vTsyhEycfrQ9VmI4FpfBFX2cMtQP5XIvTdU8xDE="),
                                  backgroundColor: Colors.green,
                                ) 
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height:  height*.11,
                          width: height*.10,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              const Positioned(
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color.fromARGB(255, 230,232,241),
                                ),
                              ) ,
                              const Positioned(
                                bottom: 20,
                                child: Text(
                                  "Lawrence A.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              Positioned(
                                top: height*.04,
                                right: 10,
                                child:const CircleAvatar(
                                  radius: 10,
                                  backgroundImage: NetworkImage("https://media.istockphoto.com/id/1471401435/vector/round-icon-of-indian-flag.jpg?s=612x612&w=0&k=20&c=kXy7vTsyhEycfrQ9VmI4FpfBFX2cMtQP5XIvTdU8xDE="),
                                  backgroundColor: Colors.green,
                                ) 
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
      bottomNavigationBar: const AppNavigationBar(),
    );
  }
}