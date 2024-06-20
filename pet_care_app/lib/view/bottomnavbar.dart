import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int navCount = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: navCount,
      selectedFontSize: 12,
      selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
      onTap: (value) {
        navCount = value;
        setState(() {
          
        });
        if(value == 0){

        }
        else if(value == 1){

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
          icon: Icon(Icons.abc),
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
    return FloatingActionButton(
      onPressed: () {
        
      },
      shape: const CircleBorder(
      ),
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add_shopping_cart_outlined,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          Text(
            "Shop",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ],
      ),
    );
  }
}