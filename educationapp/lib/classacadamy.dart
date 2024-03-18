
import 'package:educationapp/bookstore.dart';
import 'package:educationapp/leaderBoard.dart';
import 'package:educationapp/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Courses{

  String name;
  String batch1;
  String batch2;
  String batch3;
  String? batch4;
  String? img;
  double amount;

  Courses(
    {
      required this.name,
      required this.batch1,
      required this.batch2,
      required this.batch3,
      this.batch4,
      this.img,
      required this.amount
    }
  );
}

List courses = [
  Courses(name: "JEE", batch1: "Physics", batch2: "Chemistry", batch3: "Maths",img:"jee.png", amount: 25000),
  Courses(name: "NEET", batch1: "Physics", batch2: "Chemistry", batch3: "Biology",img: "neet.jpeg", amount: 20000),
  Courses(name: "MHTCET", batch1: "Physics", batch2: "Chemistry", batch3: "Maths",batch4: "Biology",img: "cet.jpg", amount: 15000),
];

List getColor1 = [
    const Color.fromRGBO(197, 4, 98, 1),
    const Color.fromRGBO(0, 77, 228, 1),
    const Color.fromARGB(255, 2, 182, 222),
];

List getColor2 = [
    const Color.fromRGBO(80, 3, 112, 1),
    const Color.fromRGBO(1, 47, 135, 1),
    const Color.fromARGB(255, 3, 89, 170),
];

class ClassAcadamy extends StatefulWidget{

  const ClassAcadamy({super.key});

  @override
  State createState()=> _ClassAcadamyState();
}

int navBarCount = 0;
class _ClassAcadamyState extends State{

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

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
        items:  [
          BottomNavigationBarItem(
            icon: (navBarCount == 0) ?
            const Icon(Icons.home):
            const Icon(Icons.home_outlined),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: (navBarCount == 1) ?
            const Icon(Icons.people):
            const Icon(Icons.people_outline),
            label: "batches"
          ),
          BottomNavigationBarItem(
            icon: (navBarCount == 2) ?
            const Icon(Icons.menu_book):
            const Icon(Icons.menu_book_outlined),
            label: "my cources"
          ),
          BottomNavigationBarItem(
            icon: (navBarCount == 3) ?
            const Icon(Icons.person):
            const Icon(Icons.person_outlined),
            label: "profile"
          ),
        ],
      ),
    );
  }




Widget getPages(int navBarCount){
  bool seeAll = false;

  if(navBarCount== 2){
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
                      "Courses",
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
  if(navBarCount== 3){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 196, 247),
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
                fontSize: 20,
                fontWeight: FontWeight.normal
              ),
            ),
            const SizedBox(height: 5,),
            Text(
              currentUser!.email,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal
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
                    onTap: (){
                      profileBottomSheet(context);
                    },
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
                    onTap: () {
                      navBarCount = 0;
                      setState(() {
                        
                      });
                      Navigator.pop(context);
                    },
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
                              child: const Icon(Icons.note_outlined,color: Colors.white,),
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
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(
                                    builder: (context) => const BookStore()
                                  ),
                                );
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(Icons.shop_2_outlined,color: Colors.white,),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text("BookStore"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            navBarCount = 2;
                            setState(() {
                              
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(Icons.play_arrow_outlined,color: Colors.white,),
                              ),
                              const SizedBox(height: 5,),
                              const Text("Live Course"),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context)=> const LeaderBoard(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child:const Icon(Icons.bookmark_add,color: Colors.white,)
                              ),
                              const SizedBox(height: 5,),
                              const Text("LeaderBoard"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        //SizedBox(width: 5,),
                        const Text(
                          "Course For You",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            seeAll = !seeAll;
                            setState((){});
                            
                          },
                          child: const Text("See All")
                        ),
                        //SizedBox(width: 5,),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    (seeAll)?
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
                    ):
                    Container(
                      //scrollDirection: Axis.horizontal,
                      height: 242,
                      padding: const EdgeInsets.all(0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: courses.length,
                        itemBuilder: (context,index){
                          return
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
                                gradient:  LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    getColor1[index%3],
                                    getColor2[index%3],
                                  ],
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Text(
                                      "${courses[index].name} Batch 2024",
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 3,),
                                  SizedBox(
                                    height: 154,
                                    width: 154,
                                    child: Image.asset("assets/images/${courses[index].img}"),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
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

void profileBottomSheet(BuildContext context){

  showModalBottomSheet(
    isDismissible: true,
    isScrollControlled: true,
    context: context, 
    builder: (context){
      return Padding(
        padding:  EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                        controller: fullNameController,
                        decoration: InputDecoration(
                          hintText: "name surname",
                          label: const Text("Enter Your Full Name"),
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(30),
                          ),
                          prefixIcon: const Icon(
                            Icons.person_outline,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if(value==null||value.isEmpty){
                            return "Please enter fullname";
                          }else{
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "abc@gmail.com",
                          label: const Text("Enter Your Email"),
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(30),
                          ),
                          prefixIcon: const Icon(
                            Icons.email_outlined
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if(value==null||value.isEmpty){
                            return "Please enter email";
                          }else{
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      //color: const Color.fromRGBO(2, 167, 177, 1),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(2, 167, 177, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:ElevatedButton(
                        onPressed: (){

                        },
                        style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                           Color.fromARGB(255, 124, 1, 246),
                        ),
                        foregroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(232, 237, 250, 1),
                        ),
                      ),
                      child:const Text(
                        "Save Changes",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ),
                  const SizedBox(
                        height: 20,
                      ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  );
}
}