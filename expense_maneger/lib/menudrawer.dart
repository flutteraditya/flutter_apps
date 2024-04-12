import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 216,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const SizedBox(width: 184,),
                const Text(
                  "Expense Manager",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  "Saves all your Transactions",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    count = 1;
                    Navigator.pop(context);
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 184,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),  
                      ),
                      color: (count == 1)?const Color.fromRGBO(14, 161, 125, 0.15): const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20,),
                        Image.asset(
                          "assets/png/transaction.png",
                          height: 17,
                          width: 18,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "Transaction",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: (count == 1)?const Color.fromRGBO(14, 161, 125, 1):const Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ), 
                GestureDetector(
                  onTap: () {
                    count = 2;
                    Navigator.pop(context);
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 184,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),  
                      ),
                      color: (count == 2)?const Color.fromRGBO(14, 161, 125, 0.15): const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20,),
                        Image.asset(
                          "assets/png/piechart.png",
                          height: 17,
                          width: 18,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "Graphs",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: (count == 2)?const Color.fromRGBO(14, 161, 125, 1):const Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ), 
                GestureDetector(
                  onTap: () {
                    count = 3;
                    Navigator.pop(context);
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 184,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),  
                      ),
                      color: (count == 3)?const Color.fromRGBO(14, 161, 125, 0.15): const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20,),
                        Image.asset(
                          "assets/png/category.png",
                          height: 17,
                          width: 18,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "Category",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: (count == 3)?const Color.fromRGBO(14, 161, 125, 1):const Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ), 
                GestureDetector(
                  onTap: () {
                    count = 4;
                    Navigator.pop(context);
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 184,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),  
                      ),
                      color: (count == 4)?const Color.fromRGBO(14, 161, 125, 0.15): const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20,),
                        Image.asset(
                          "assets/png/trash.png",
                          height: 17,
                          width: 18,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "Tarsh",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: (count == 4)?const Color.fromRGBO(14, 161, 125, 1):const Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ), 
                GestureDetector(
                  onTap: () {
                    count = 5;
                    Navigator.pop(context);
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 184,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),  
                      ),
                      color: (count == 5)?const Color.fromRGBO(14, 161, 125, 0.15): const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20,),
                        Image.asset(
                          "assets/png/aboutus.png",
                          height: 17,
                          width: 18,
                        ),
                        const SizedBox(width: 5,),
                        Text(
                          "About Us",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: (count == 5)?const Color.fromRGBO(14, 161, 125, 1):const Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}