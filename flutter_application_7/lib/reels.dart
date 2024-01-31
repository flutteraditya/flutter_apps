import 'package:flutter/material.dart';
import 'variables.dart';
import 'home.dart';

class Reels extends StatefulWidget{
  const Reels({super.key});
  @override
  State<Reels> createState()=> _ReelsState();
}

class _ReelsState extends State<Reels>{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Reels"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo_outlined)),
          const SizedBox(width: 20,)
        ],
        ),
        floatingActionButton: Column(
          children: [FloatingActionButton(onPressed: (){},child: const Icon(Icons.favorite),),
         ]),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        selectedFontSize: 12,
        onTap:(int index) {
          setState(() {
            bottmNBCount = index;
            if(index==0){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const Assign1()),
              );
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
          icon: Icon(Icons.menu,),
          label: "menu",
        ),
      ]),
    );
  }
}