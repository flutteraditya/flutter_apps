import 'package:flutter/material.dart';
import 'variables.dart';

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
        title: const Text("Reels",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo_outlined,color: Colors.white,)),
          const SizedBox(width: 15,)
        ],
        ),
        /*floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: FloatingActionButton(

          onPressed: (){},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite)),
            ]
          ),
        ),*/
        body: Container(
          // color: Colors.grey,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(image: AssetImage("images/reelimg.jpg"))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),),
                      const SizedBox(width: 10,),
                      const Text("@adityakhetre",style: TextStyle(color: Colors.white),),
                      const SizedBox(width: 10,),
                      
                      Container(
                        height: 20,
                        width: (reel1[1]) ? 100:80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(width: 1,color: Colors.white)
                          
                        ),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          //style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
                          onTap: (){setState(() {reel1[1]= !reel1[1];});},
                          child: Container(
                            color: Colors.transparent,
                            child: (reel1[1]) ?  
                              const Text("Following",style: TextStyle(fontSize: 10,color: Colors.white),): 
                              const Text("Follow",style: TextStyle(fontSize: 10,color: Colors.white),),
                        ),
                      )
                      )
                      
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Text("virat gem of indian cricket ...",style: TextStyle(fontSize: 10,color: Colors.white)),
                  const SizedBox(height: 10,),
                  Container(
                    height: 20,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //border: Border.all(width: 1,color: Colors.white),
                        color: Colors.blueGrey,
                        
                      ),
                      alignment: Alignment.center,
                      child: const Text("♫ adityakhetre.Originalaudio",style: TextStyle(fontSize: 10,color: Colors.white),),
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){setState(() {reel1[0]= !reel1[0];});}, icon: Icon(reel1[0] ? Icons.favorite_rounded : Icons.favorite_outline_outlined,color: reel1[0] ? Colors.red : Colors.white)),
                    Container(
                      height: 15,
                      width: 30,
                      //color: Colors.red,
                      alignment: Alignment.center,
                      child: const Text("128k",style:TextStyle(fontSize: 10,color: Colors.white,)),
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined,color: Colors.white,)),
                    Container(
                      height: 15,
                      width: 30,
                      alignment: Alignment.center,
                      child: const Text("100",style:TextStyle(fontSize: 10,color: Colors.white,)),
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send,color: Colors.white,)),
                    Container(
                      height: 15,
                      width: 30,
                      alignment: Alignment.center,
                      child: const Text("186k",style:TextStyle(fontSize: 10,color: Colors.white,)),
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined,color: Colors.white,)),
                    const SizedBox(height: 10,),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.blueGrey,
                        image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ),
              //const SizedBox(width: 10,),
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