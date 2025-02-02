
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppNavigationBar extends StatefulWidget {
  const AppNavigationBar({super.key});

  @override
  State<AppNavigationBar> createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  RxInt index = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(() => 
      BottomNavigationBar(
        onTap: (value) {
          index.value = value;
        },
        currentIndex: index.value,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                const SizedBox(height: 5,),
                (index.value == 0)?
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 3,
                ): const SizedBox(height: 6,),
              ],
            ), 
            label: ".",         
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(
                  Icons.wallet_outlined,
                  size: 30,
                ),
                const SizedBox(height: 5,),
                (index.value == 1)?
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 3,
                ): const SizedBox(height: 6,),
              ],
            ), 
            label: ".",         
          ),BottomNavigationBarItem(
            icon: Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      width: 10,
                      color: const Color.fromARGB(255, 53,62,253),
                    )
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255,84,198,252),
                  ),
                ),
                const SizedBox(height: 5,),
                // (index.value == 2)?
                // const CircleAvatar(
                //   backgroundColor: Colors.blue,
                //   radius: 3,
                // ): const SizedBox(height: 6,),
              ],
            ), 
            label: ".",         
          ),BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(
                  Icons.people_alt_outlined,
                  size: 30,
                ),
                const SizedBox(height: 5,),
                (index.value == 3)?
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 3,
                ): const SizedBox(height: 6,),
              ],
            ), 
            label: ".",         
          ),BottomNavigationBarItem(
            icon: Column(
              children: [
                const Icon(
                  Icons.more_horiz_outlined,
                  size: 30,
                ),
                const SizedBox(height: 5,),
                (index.value == 4)?
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 3,
                ): const SizedBox(height: 6,),
              ],
            ), 
            label: ".",         
          ),
        ],
      ),
    );
  }
}