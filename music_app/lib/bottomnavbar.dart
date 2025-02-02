import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      onTap: (value) {
        i = value;
        setState(() {
          
        });
      },
      currentIndex: i,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      unselectedLabelStyle: GoogleFonts.abel(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: const Color.fromRGBO(157, 178, 206, 1),
      ),
      selectedLabelStyle: GoogleFonts.abel(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: const Color.fromRGBO(157, 178, 206, 1),
      ),
      unselectedFontSize: 12,
      selectedFontSize: 12,
      unselectedItemColor: const Color.fromRGBO(157, 178, 206, 1),
      selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/b00.png",
                color: (i==0) ? const Color.fromRGBO(230, 154, 21, 1): const Color.fromRGBO(157, 178, 206, 1),
                height: 24,
                width: 24,
              ),
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/b10.png",
                color: (i==1) ? const Color.fromRGBO(230, 154, 21, 1): const Color.fromRGBO(157, 178, 206, 1),
                height: 24,
                width: 24,
              ),
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/b20.png",
                color: (i==2) ? const Color.fromRGBO(230, 154, 21, 1): const Color.fromRGBO(157, 178, 206, 1),
                height: 24,
                width: 24,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/b30.png",
                color: (i==3) ? const Color.fromRGBO(230, 154, 21, 1): const Color.fromRGBO(157, 178, 206, 1),
                height: 24,
                width: 24,
              ),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/b40.png",
                color: (i==4) ? const Color.fromRGBO(230, 154, 21, 1): const Color.fromRGBO(157, 178, 206, 1),
                height: 24,
                width: 24,
              ),
            ),
            label: "Profile",
          ),
        ],
    );
  }
}