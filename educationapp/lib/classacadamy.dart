
import 'package:educationapp/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        title: Column(
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
            const SizedBox(height: 50,),
            const CircleAvatar(radius:50,backgroundImage: AssetImage("assets/images/profile.jpeg")),
            const SizedBox(height: 20,),
            Text(
              currentUser!.name,
              style: const TextStyle(
                fontSize: 20
              ),
            ),
            const SizedBox(height: 5,),
            Text(
              currentUser!.email,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 20,),
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
                  child: Text(
                    "Hi, ${currentUser!.name} ",
                    style: const TextStyle(
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
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: SvgPicture.asset("assets/svg/category.svg"),
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
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.playlist_play,color: Colors.white,),
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
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.note,color: Colors.white,),
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
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.shop,color: Colors.white,),
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
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(Icons.play_arrow,color: Colors.white,),
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
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child:Icon(Icons.batch_prediction)
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
                      "Course For You",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Text("See All"),
                    //SizedBox(width: 5,),
                  ],
                ),
                    const SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context)=> const Course(),
                              //   ),
                              // );
                            },
                            child: Container(
                              height: 242,
                              width: 190,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 22,
                                vertical: 20,
                              ),
                              margin: const EdgeInsets.only(
                                right: 20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(197, 4, 98, 1),
                                    Color.fromRGBO(80, 3, 112, 1),
                                  ],
                                ),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    child: Text(
                                      "JEE Batch 2024",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3,),
                                  SizedBox(
                                    height: 154,
                                    width: 154,
                                    child: Image.asset("assets/images/jee.png"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      
                          Container(
                            height: 242,
                            width: 190,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 20,
                            ),
                            margin: const EdgeInsets.only(
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(0, 77, 228, 1),
                                  Color.fromRGBO(1, 47, 135, 1),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  child: Text(
                                    "NEET Batch 2024",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3,),
                                SizedBox(
                                  height: 154,
                                  width: 154,
                                  child: Image.asset("assets/images/neet.jpeg"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 242,
                            width: 190,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 20,
                            ),
                            margin: const EdgeInsets.only(
                              right: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(150, 225, 242, 1),
                                  Color.fromRGBO(11, 137, 196, 1),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  child: Text(
                                    "CET Batch 2024",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3,),
                                SizedBox(
                                  height: 154,
                                  width: 154,
                                  child: Image.asset("assets/images/neet.jpeg"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}