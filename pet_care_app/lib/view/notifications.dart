import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 20
        ),
        child: ListView(
          //mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 50,width: double.infinity,),
            SizedBox(
              width: 330,
              height: 56,
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0,8),
                          blurRadius: 16,
                          spreadRadius: -4,
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 13,
                    ),
                  ),
                  const SizedBox(width: 90,),
                  const Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context,i){
                return Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 330,
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(31, 32, 41, 1),
                          
                        ),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      width: 330,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0,8),
                            blurRadius: 16,
                            spreadRadius: -4,
                            color: Color.fromRGBO(22, 34, 51, 0.08),
                          ),
                        ],
                      ),
                      child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context,i){
                          return Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                margin: const EdgeInsets.symmetric(
                                  vertical: 5
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(252, 219, 193, 1),
                                ),
                                child: const Icon(
                                  Icons.favorite_outline,
                                  size: 24,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                ),
                              ),
                              const SizedBox(width: 15,),
                              const SizedBox(
                                width: 240,
                                child: Text(
                                  "Your checkout is successfull, product is on tne way",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(31, 32, 41, 1)
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      ),
                    ),
                    const SizedBox(height: 10,)
                  ],
                );
              } 
            ),
          ],
        ),
      ),
    );
  }
}