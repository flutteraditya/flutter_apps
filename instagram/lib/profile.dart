import 'package:flutter/material.dart';
import 'variables.dart';


class Profile extends StatefulWidget{

  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("adityakhetre"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(color: Colors.white),
        actions: [
          IconButton(onPressed: (){},icon: const Icon(Icons.add_box_outlined)),
          const SizedBox(width: 10,),
          IconButton(onPressed: (){},icon: const Icon(Icons.menu)),
          const SizedBox(width: 10,),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(radius: 30,backgroundImage: NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),),
                SizedBox(width: 5,),
                SizedBox(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("145",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("posts",style:TextStyle(fontSize: 10,color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                SizedBox(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("11M",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("followers",style:TextStyle(fontSize: 10,color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(width: 5,),
                SizedBox(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("234",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("following",style:TextStyle(fontSize: 10,color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(width: 5,)
              ],
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Aditya Khetre",style: TextStyle(color: Colors.white),),
                  Text("ShivBhakt",style: TextStyle(color: Colors.white),),
                  Text("#navodian",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 170,
                  margin: const EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: const Text("Edit profile",style:TextStyle(fontSize: 10)),
                ),
                Container(
                  height: 30,
                  width: 170,
                  margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: const Text("Share profile",style:TextStyle(fontSize: 10)),
                ),
                Container(
                  height: 30,
                  width: 30,
                  margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: const Icon(Icons.person_add,size: 15,)
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 12,
        onTap:(int index) {
          setState(() {
            bottmNBCount = index;
            if(index==0){
              //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Assign1()));
              Navigator.pop(context);
            }
            if(index==1){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Search()),
              );
            }
            if(index==3){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Reels()),
              );
            }
            if(index==4){
              //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Profile()),
              //);
            }
          });
          },
        currentIndex: bottmNBCount,

        items: const <BottomNavigationBarItem>[
          
        BottomNavigationBarItem(
          icon: Icon(Icons.home,),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined,),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_a_photo_outlined,),
          label: "media",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_creation_outlined,),
          label: "reels",
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600",),radius: 10,),
          label: "menu",
        ),
      ]),
    );
  }
}