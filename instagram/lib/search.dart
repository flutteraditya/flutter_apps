import 'package:flutter/material.dart';
import 'variables.dart';

class Search extends StatefulWidget{
  const Search({super.key});
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search>{

  @override

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
         // color: Colors.grey,
          height: 30,
          width: 360,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10),),
            color: Colors.grey,
          ),
           child: //const Row(
          //   children: [
          //     SizedBox(width: 10,height: 30,),
          //     Icon(Icons.search,size: 15,),
          //     SizedBox(width: 10,),
              //Text("Search",style: TextStyle(fontSize: 10),)
              TextField(
                //cursorHeight: 20,
                textAlign: TextAlign.start,
                
                decoration: InputDecoration(
                  hintText: "search",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(10) ,
                    borderSide: BorderSide.none
                  ),
                ),
              ),
           // ],
          //),
        ),
        backgroundColor: Colors.black,

      ),
      body: Container( 
        width: double.infinity,
        color: Colors.black,
      child: ListView(
        
        children: [
          const SizedBox(height: 0.5,),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 0.5,),
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(width: 0.5,),
              Column(
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 0.5,),
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(width: 0.5,),
              Container(
                height: 260.5,
                width: 130,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 0.5,),
          Row(
            children: [
              Container(
                height: 260.5,
                width: 130,
                color: Colors.grey,
              ),
              const SizedBox(width: 0.5,),
              Column(
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 0.5,),
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(width: 0.5,),
              Column(
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 0.5,),
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 0.5,),  
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 0.5,),
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(width: 0.5,),
              Column(
                children: [
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 0.5,),
                  Container(
                    height: 130,
                    width: 130,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(width: 0.5,),
              Container(
                height: 260.5,
                width: 130,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 0.5,),       
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
              Navigator.push(context,MaterialPageRoute(builder: (context) => const Assign1()));
            }
            if(index==1){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const Search()),
              );
            }
            if(index==3){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const Reels()),
              );
            }
            if(index==4){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const Profile()),
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
          icon: CircleAvatar(backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600",),radius: 10,),
          label: "menu",
        ),
      ]),
    );
  }
}