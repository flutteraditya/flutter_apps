import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_care_app/view/bottomnavbar.dart';
import 'package:pet_care_app/view/notifications.dart';

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
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
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
                        child: const Text(
                          "Hello, Sarah",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ),
                      Container(
                        height: 23,
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Good Morning!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(194, 195, 204, 1),
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
                    child: Image.asset(
                      "assets/icons/bell.png",
                      height: 25,
                      width: 25,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 36,
              width: 330,
              child: TextField(
                cursorColor: const Color.fromRGBO(245, 146, 69, 1),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    "assets/icons/search.png",
                    height: 25,
                    width: 25,
                  ),
                  hintText: "search",
                  hintStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(194, 195, 204, 1)
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "In Love With Pets?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          height: 2
                        ),
                      ),
                      Text(
                        "Get all what you need for them",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(250, 200, 162, 1)
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
            const SizedBox(
              height: 20,
              width: 330,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      height: 2
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(194, 195, 204, 1),
                      height: 2
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const SizedBox(
              height: 85,
              width: 330,
              child: Row(
                //scrollDirection: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/profileimg01.png"),
                        radius: 30,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Veterinary",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/profileimg02.png"),
                        radius: 30,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Grooming",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/profileimg03.png"),
                        radius: 30,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Pet Store",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/profileimg04.png"),
                        radius: 30,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Training",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const SizedBox(
              height: 20,
              width: 330,
              child: Text(
                "Event",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, 1),
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
                      const Text(
                        "Find and Join in Special \nEvents For Your Pets!",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1),
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
                        child: const Text(
                          "See More",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 1)
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
            const SizedBox(
              height: 20,
              width: 330,
              child: Text(
                "Community",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, 1),
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
                      const Text(
                        "Connect and share with \ncommunities! ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1),
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
                        child: const Text(
                          "See More",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 1)
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
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: const FloatActBtn(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}