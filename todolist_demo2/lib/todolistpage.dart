
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
//import "package:google_fonts/google_fonts.dart";

class ToDoListPage extends StatefulWidget{
  const ToDoListPage({super.key});

  @override
  State createState()=> _ToDoListPageState();
}

class _ToDoListPageState extends State{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(111, 81, 255, 1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 45,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 29,
                ),
                Text(
                  "Good Morning",
                  //style: GoogleFonts.quicksand(
                    style: TextStyle( 
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    //height: 27.5,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 29,
                ),
                Text(
                  "Aditya",
                  //style: GoogleFonts.quicksand(
                  style: TextStyle(  
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    //height: 37.5,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 41,
            ),
            Expanded(
              child: Container(
                //height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                //color: Color.fromRGBO(217, 217, 217, 1),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(19),
                      child: const Text(
                        "CREATE TO DO LIST",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),

                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                top: 39,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    spreadRadius: 6,
                                  ),
                                ],
                              ),
                            
                              child: ListView.builder(
                                itemCount: 2,
                                itemBuilder: (context,index){
                            
                                  return 
                                  Container(
                                    height: 90,
                                    width: 360,
                                    margin: EdgeInsets.only(
                                      top: 10
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 1,
                                          spreadRadius: 2,
                                          offset: Offset(0, 2)
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 52,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                        ),
                                        const SizedBox(width: 20,),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Lorem Ipsum is simply dummy industry. ",
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              SizedBox(height: 8,),
                                              Text(
                                                "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}