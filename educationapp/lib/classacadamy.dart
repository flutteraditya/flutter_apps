
import 'package:flutter/material.dart';

class ClassAcadamy extends StatefulWidget{

  const ClassAcadamy({super.key});

  @override
  State createState()=> _ClassAcadamyState();
}

class _ClassAcadamyState extends State{
  int navBarCount = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(

      //appBar: AppBar(),
      body: getPages(navBarCount),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          navBarCount = value;
          setState(() {
            
          });
        },
        currentIndex: navBarCount,
        type: BottomNavigationBarType.fixed,
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "batches"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "my cources"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "profile"
          ),
        ],
      ),
    );
  }
}





Widget getPages(int navBarCount){

  if(navBarCount== 3){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 237, 250, 1),
      appBar: AppBar(
        toolbarHeight: 300,
        shadowColor: Colors.grey,
        elevation: 10,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(300),
            bottomRight: Radius.circular(300),
          ),
        ),
        // leading: IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   }, 
        //   icon: const Icon(Icons.arrow_back),
        //   alignment: Alignment.centerLeft,
        // ),
        title: const Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       onPressed: (){
            //         //Navigator.pop(context);
            //       }, 
            //       icon: const Icon(Icons.arrow_back),
            //       alignment: Alignment.centerLeft,
            //     ),
            //     const Spacer(),
            //     const Image(image: AssetImage("images/hat.png",),height: 30,width: 30,),
            //     const Text("VisioLearn",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
            //     const Spacer(),
            //     IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_outlined)),
            //     const SizedBox(width: 10,),
            //     IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),
            //     const SizedBox(width: 10,),
            //   ],
            // ),
            //Spacer(),
            SizedBox(height: 50,),
            CircleAvatar(radius:50,backgroundImage: AssetImage("assets/images/profile.jpeg")),
            SizedBox(height: 20,),
            Text(
              "Aditya Khetre",
              style: TextStyle(
                fontSize: 20
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "adityakhetre@gmail.com",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 124, 1, 246),
            // actions: [
            //   IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_outlined)),
            //   const SizedBox(width: 10,),
            //   IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),
            //   const SizedBox(width: 10,),
            // ],
        ),
      body:  Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: ListView(
            children: [
              //SizedBox(height: 60,),
              //CircleAvatar(radius:50,backgroundImage: AssetImage("images/profile.jpeg")),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                    ),
                  margin: const EdgeInsets.all(10),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 124, 1, 246),
                    ),
                    boxShadow: const[
                      BoxShadow(
                        color: Color.fromARGB(255, 124, 1, 246),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(5,5),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.person_2_outlined),
                      SizedBox(width: 10,),
                      Text("Profile"),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                    ),
                  margin: const EdgeInsets.all(10),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 124, 1, 246),
                    ),
                    boxShadow: const[
                      BoxShadow(
                        color: Color.fromARGB(255, 124, 1, 246),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(5,5),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.bookmark_outline),
                      SizedBox(width: 10,),
                      Text("Saved Models"),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                    ),
                  margin: const EdgeInsets.all(10),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 124, 1, 246),
                    ),
                    boxShadow: const[
                      BoxShadow(
                        color: Color.fromARGB(255, 124, 1, 246),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(5,5),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.reviews_outlined),
                      SizedBox(width: 10,),
                      Text("Reviews"),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                    ),
                  margin: const EdgeInsets.all(10),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 124, 1, 246),
                    ),
                    boxShadow: const[
                      BoxShadow(
                        color: Color.fromARGB(255, 124, 1, 246),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(5,5),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.settings_outlined),
                      SizedBox(width: 10,),
                      Text("Settings"),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                    ),
                  margin: const EdgeInsets.all(10),
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 124, 1, 246),
                    ),
                    boxShadow: const[
                      BoxShadow(
                        color: Color.fromARGB(255, 124, 1, 246),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(5,5),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 10,),
                      Text("Log Out"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  return Container(
    color: const Color.fromARGB(255, 221, 196, 247),
    //height: 200,
    child: Column(
      children: [
        Container(
          // height: 200,
          margin: const EdgeInsets.only(bottom: 20),
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
                    "Hi, Programmer ",
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
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text("Category"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text("Classes"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text("Free Course"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text("BookStore"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text("Live Course"),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          //child: ,
                        ),
                        const SizedBox(height: 5,),
                        const Text("LeaderBoard"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    //SizedBox(width: 5,),
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                    Spacer(),
                    Text("See All"),
                    //SizedBox(width: 5,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}