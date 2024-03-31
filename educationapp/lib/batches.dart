import 'package:educationapp/classacadamy.dart';
import 'package:flutter/material.dart';

class BachesPage extends StatefulWidget {
  const BachesPage({super.key});

  @override
  State<BachesPage> createState() => _BachesPageState();
}

class _BachesPageState extends State<BachesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 221, 196, 247),
      //height: 200,
      child: Column(
        children: [
          Container(
            // height: 200,
            //margin: const EdgeInsets.only(bottom: 20),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 124, 1, 246),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Row(
                    children: [
                      Icon(Icons.menu),
                      Spacer(),
                      Icon(Icons.notifications_outlined),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Batches",
                      style: TextStyle(
                        fontSize: 30
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search here...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context,index){
                  return Container(
                            height: 190,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            margin: const EdgeInsets.only(
                              right: 20,
                              left: 20,
                              bottom: 20
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  getColor1[index%3],
                                  getColor2[index%3],
                                ],
                              ),
                            ),
                            child: Row(
                              children: [
                                const Column(
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        " Batch 2024",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Image.asset("assets/images/neet.jpeg"),
                                ),
                              ],
                            ),
                          );
                },
              )
            )
          )
        ]
      )
    );
  }
}