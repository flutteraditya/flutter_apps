
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_02/view/app_navigation_bar.dart';
import 'package:ui_assignment_02/view/widgets/round_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = Get.height;
  double width = Get.width;
  RxDouble slide = .7.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width*0.08,
        ),
        child: Column(
          children: [
            SizedBox(width: width,height: height*.06,),
            Row(
              children: [
                const Icon(
                  Icons.menu,
                  size: 35,
                ),
                const Spacer(),
                Image.asset("assets/pradanLogo.png",height: 70,),
                const Spacer(),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.more_horiz_outlined,
                      size: 25,
                    ),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: width,
                    height: width*.55,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromARGB(255, 232,232,232),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 232,232,232),
                              child: Icon(
                                Icons.image_outlined,
                                size: 15,
                                ),
                            ),
                            const SizedBox(width: 10,),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("KEDAR JADHAV"),
                                Text(
                                  "HR Maneger",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 30,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(255, 232,232,232),
                              ),
                              child: const Text(
                                "H/D"
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width*.2,
                              height: 50,
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "27 Sep 2024",
                                    style: TextStyle(
                                      fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*.2,
                              height: 50,
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "In Time",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "09:30 AM",
                                    style: TextStyle(
                                      fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width*.2,
                              height: 50,
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Out Time",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "05:00 PM",
                                    style: TextStyle(
                                      fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(() => 
                              Slider(
                                value: slide.value, 
                                thumbColor: Colors.white,
                                activeColor: const Color.fromARGB(255, 9, 103, 7),
                                //allowedInteraction: SliderInteraction.slideOnly,
                                onChanged: (value){
                                  slide.value = value;
                                }
                              ),
                            ),
                            const Text("07 hrs:30 mins")
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 12,
                                ),
                                onPressed: (){},
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 30,
                              width: width*.5,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: const Text("Monthly Report"),
                            ),
                            const Spacer(),
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  size: 12,
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: Get.width*.25,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "34",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Present"
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: Get.width*.25,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "3",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Absent"
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: Get.width*.25,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Holiday"
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: Get.width*.25,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "8",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Half Day"
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: Get.width*.25,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "3",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Week Off"
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: Get.width*.25,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "Leave"
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  RoundButton(
                    width: width,
                    onPressed: (){}, 
                    title: "STATISTICS",
                    titleColor: Colors.black,
                    color: const Color.fromARGB(255,231,231,231),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: width,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Leave Request",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "2 months ago",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "10.07.2024",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              "Approved by Ed",
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 123, 14)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: width,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Compensatory Leave Request",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "1 week ago",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "10.08.2024",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              "Pending by Supervisor",
                              style: TextStyle(
                                color: Colors.grey[800],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: width,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Travel Request",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "1 week ago",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "15.08.2024",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey
                              ),
                            ),
                            Text(
                              "Administrator Approved",
                              style: TextStyle(
                                color: Color.fromARGB(255, 10, 123, 14)
                              ),
                            ),
                          ],
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