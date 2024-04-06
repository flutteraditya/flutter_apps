import 'package:educationapp/classacadamy.dart';
import 'package:flutter/material.dart';

class BachesPage extends StatefulWidget {
  const BachesPage({super.key});

  @override
  State<BachesPage> createState() => _BachesPageState();
}
class Batches{
  String batchName;
  String courseName;

  Batches({required this.courseName,required this.batchName});
}

List batches = [];

void getBatchData(){
  batches = [];
  for(int i= 0;i<myCourses.length;i++){
    batches.add(Batches(courseName: myCourses[i].courseName, batchName: myCourses[i].batch1));
    batches.add(Batches(courseName: myCourses[i].courseName, batchName: myCourses[i].batch2));
    batches.add(Batches(courseName: myCourses[i].courseName, batchName: myCourses[i].batch3));
    if(myCourses[i].batch4!= null){
      batches.add(Batches(courseName: myCourses[i].courseName, batchName: myCourses[i].batch4));
    }
  }
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
                itemCount: batches.length,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Text(
                                        "${batches[index].courseName} Batch 2024",
                                        style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Text(
                                        "${batches[index].batchName}",
                                        style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // const Spacer(),
                                // SizedBox(
                                //   height: 150,
                                //   width: 150,
                                //   child: Image.network("https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg"),
                                // ),
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