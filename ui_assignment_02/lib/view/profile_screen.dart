import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_assignment_02/view/app_navigation_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double height = Get.height;
  double width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width*0.08,
        ),
        child: Column(
          children: [
            SizedBox(
              width: width,
              height: height*.1,
            ),
            Row(
              children: [
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
                      Icons.arrow_back,
                      size: 25,
                    ),
                    onPressed: (){},
                  ),
                ),
                const Spacer(),
                const Text(
                  "PERSONAL DETAILS",
                ),
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
            SizedBox(
              height: width*.05,
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.add_a_photo_outlined),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "KEDAR JADHAV",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "alexajohan@gmail.com",
                      
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: width*.03,
            ),
            Container(
              height: 1,
              width: width,
              color: Colors.grey,
            ),
            SizedBox(
              height: width*.03,
            ),
            SizedBox(
              width: width,
              child: const Text(
                "Name",
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  //fontSize: 24
                ),
              ),
            ),
            SizedBox(height: width*.02,),
            TextFormField(
              //controller: logInController.userNameController.value,
              decoration: InputDecoration(
                hintText: "Kedar Jadhav",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(
              height: width*.03,
            ),
            SizedBox(
              width: width,
              child: const Text(
                "Gender",
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  //fontSize: 24
                ),
              ),
            ),
            SizedBox(height: width*.02,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.green,
                    ),
                    SizedBox(width: 10,),
                    Text("male"),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 10,),
                    Text("female"),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 10,),
                    Text("other"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: width*.03,
            ),
            SizedBox(
              width: width,
              child: const Text(
                "Date of Birth",
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  //fontSize: 24
                ),
            ),
            ),
            SizedBox(height: width*.02,),
            TextFormField(
              //controller: logInController.userNameController.value,
              decoration: InputDecoration(
                hintText: "8 July 1985",
                suffixIcon: const Icon(Icons.calendar_month_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(
              height: width*.03,
            ),
            SizedBox(
              width: width,
              child: const Text(
                "Date of Joining",
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  //fontSize: 24
                ),
            ),
            ),
            SizedBox(height: width*.02,),
            TextFormField(
              //controller: logInController.userNameController.value,
              decoration: InputDecoration(
                hintText: "8 August 1999",
                suffixIcon: const Icon(Icons.calendar_month_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(
              height: width*.03,
            ),
            SizedBox(
              width: width,
              child: const Text(
                "Status",
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  //fontSize: 24
                ),
            ),
            ),
            SizedBox(height: width*.02,),
            TextFormField(
              //controller: logInController.userNameController.value,
              decoration: InputDecoration(
                hintText: "Active",
                suffixIcon: const Icon(
                  Icons.arrow_circle_down_outlined,
                  size: 25,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            const Spacer(),
            Row(
              children: [
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
                      Icons.arrow_forward,
                      size: 25,
                    ),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            SizedBox(height: width*.02,),
          ],
        ),
      ),
      bottomNavigationBar: const AppNavigationBar(),
    );
  }
}