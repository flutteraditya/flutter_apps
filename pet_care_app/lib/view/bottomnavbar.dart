import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/dashboard.dart';
import 'package:pet_care_app/view/grooming.dart';
import 'package:pet_care_app/view/shop.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int navCount = 0;
int dash = -1;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: navCount,
      selectedFontSize: 12,
      selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
      onTap: (value) {
        dash = navCount;
        navCount = value;
        setState(() {
          
        });
        if(value == 0){
          if(dash != 0){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const DashboardPage(),
              ),
            );
          }
        }
        else if(value == 1){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const GroomingPage(),
            ),
          );

        }
        else if(value == 3){

        }
        else if(value == 4){

        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: "Service",
        ),
        BottomNavigationBarItem(
          icon: SizedBox(height: 40,),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_outlined),
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        ),
      ],
    );
  }
}


class FloatActBtn extends StatefulWidget {
  const FloatActBtn({super.key});

  @override
  State<FloatActBtn> createState() => _FloatActBtnState();
}

class _FloatActBtnState extends State<FloatActBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: 66,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const ShopPage(),
            ),
          );
          },
          //elevation: 65,
          
          shape: const CircleBorder(
          ),
          backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.add_shopping_cart_outlined,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              const SizedBox(height: 5,),
              Text(
                "Shop",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
