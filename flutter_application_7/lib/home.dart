import 'package:flutter/material.dart';
import 'variables.dart';


class Assign1 extends StatefulWidget{
  const Assign1({super.key});
  @override
  State<Assign1> createState()=> _Assign1State();
}

class _Assign1State extends State<Assign1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w900
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_border_rounded,
            color: Colors.white,
          ),
          SizedBox(width: 10,),
          Icon(
            Icons.chat_outlined,
            color: Colors.white,
          ),
          SizedBox(width: 10,)
        ],
        
      ),
      body: ListView(
        
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                child: Row(
                    children:  [
                      SizedBox(height: 80,width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),foregroundColor: Colors.black,),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://images.unsplash.com/photo-1544038659-12337883d216?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGh1bWFufGVufDB8fDB8fHww"),),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://images.unsplash.com/photo-1529397938791-2aba4681454f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGh1bWFufGVufDB8fDB8fHww"),),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://images.unsplash.com/photo-1555952517-2e8e729e0b44?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGh1bWFufGVufDB8fDB8fHww"),),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://plus.unsplash.com/premium_photo-1664301240097-fcb33fe1dfd5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGh1bWFufGVufDB8fDB8fHww"),),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://plus.unsplash.com/premium_photo-1664301240097-fcb33fe1dfd5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGh1bWFufGVufDB8fDB8fHww"),),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://images.unsplash.com/photo-1555952517-2e8e729e0b44?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGh1bWFufGVufDB8fDB8fHww"),),
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 30,backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),),
                    ],
                ),
                ),
                Container(height: 1,color: Colors.white,),
                Row(
                  children: [
                    const SizedBox(width: 10,),
                    Container(
                      height: 60,
                      width: 40,
                      color: Colors.black,
                      child: const CircleAvatar(backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),),
                    ),
                    const SizedBox(width: 10,),
                    const Text("@adityakhetre",style: TextStyle(color: Colors.white),),
                    const Spacer(),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined,color: Colors.white,)),
                  ],
                ),
                Container(
                  color: Colors.black,
                  height: 300,
                  child: Image.network("https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",width: double.infinity,),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){setState(() {post1[0]= !post1[0];});}, icon: Icon(post1[0] ? Icons.favorite_rounded : Icons.favorite_outline_outlined,color: post1[0] ? Colors.red : Colors.white)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined,color: Colors.white,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send,color: Colors.white,)),
                    const Spacer(),
                    IconButton(onPressed: (){setState(() {post1[1]= !post1[1];});}, icon: post1[1] ? const Icon(Icons.bookmark_rounded, color: Colors.white,) : const Icon(Icons.bookmark_outline,color: Colors.white)),
                  ],
                )
              ],
            ),
            
            const Text("10342 likes",style: TextStyle(color: Colors.white),),
            const Text("#FriendshipGoals Partners in Crime",style: TextStyle(color: Colors.white),),
            const Text("see all Comments",style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic,color: Colors.white),),
            const Text("1 day ago",style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic,color: Colors.white),),
            const SizedBox(height: 10,),
                  
            Container(height: 1,color: Colors.white,),
            Row(
              children: [
                const SizedBox(width: 10,),
                Container(                    
                  height: 60,
                  width: 40,
                  color: Colors.black,
                  child: const CircleAvatar(backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),),
                ),
                const SizedBox(width: 10,),
                const Text("@adityakhetre",style: TextStyle(color: Colors.white),),
                const Spacer(),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined,color: Colors.white,)),

              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  height: 300,
                  //width: 300,
                  child: Image.network("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D",width: double.infinity,),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){setState(() {post2[0]= !post2[0];});}, icon: post2[0] ? const Icon( Icons.favorite_rounded,color: Colors.red,) : const Icon(Icons.favorite_outline_outlined,color: Colors.white,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined,color: Colors.white,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send,color: Colors.white,)),
                    const Spacer(),
                    IconButton(onPressed: (){setState(() {post2[1]= !post2[1];});}, icon: post2[1] ? const Icon(Icons.bookmark_rounded, color: Colors.white,) : const Icon(Icons.bookmark_outline,color: Colors.white,)),
                  ],
                )
              ],
            ),

            const Text("16342 likes",style: TextStyle(color: Colors.white),),
            const Text("#FriendshipGoals",style: TextStyle(color: Colors.white),),
            const Text("see all Comments",style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic,color: Colors.white),),
            const Text("1 day ago",style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic,color: Colors.white),),
            const SizedBox(height: 10,),

            Container(height: 1,color: Colors.white,),
            Row(
              children: [
                const SizedBox(width: 10,),
                Container(                    
                    height: 60,
                    width: 40,
                    color: Colors.black,
                    child: const CircleAvatar(backgroundImage:NetworkImage("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=600"),),
                  ),
                const SizedBox(width: 10,),
                const Text("@adityakhetre",style: TextStyle(color: Colors.white),),
                const Spacer(),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined,color: Colors.white,)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  height: 300,
                  child: Image.network("https://images.unsplash.com/photo-1546019170-f1f6e46039f5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGh1bWFufGVufDB8fDB8fHww",width: double.infinity,),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){setState(() {post3[0]= !post3[0];});}, icon: Icon(post3[0] ? Icons.favorite_rounded : Icons.favorite_outline_outlined,color: post3[0] ? Colors.red : Colors.white)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined,color: Colors.white,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send,color: Colors.white,)),
                    const Spacer(),
                    IconButton(onPressed: (){setState(() {post3[1]= !post3[1];});}, icon: post3[1] ? const Icon(Icons.bookmark_rounded, color: Colors.white,) : const Icon(Icons.bookmark_outline,color: Colors.white)),
                  ],
                )
              ],
            ),
            const Text("12342 likes",style: TextStyle(color: Colors.white),),
            const Text("#Partners in Crime",style: TextStyle(color: Colors.white),),
            const Text("see all Comments",style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic,color: Colors.white),),
            const Text("1 day ago",style: TextStyle(fontSize: 10,fontStyle: FontStyle.italic,color: Colors.white),),
            const SizedBox(height: 10,),
            
        ],
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
      /*
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  child: Image.network("https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",width: double.infinity,),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline_outlined)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send)),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  child: Image.network("https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",width: double.infinity,),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline_outlined)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send)),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  child: Image.network("https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg",width: double.infinity,),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline_outlined)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.comment_outlined)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send)),
                  ],
                )
              ],
            ),
          ]
        ),
      )*/
    );
  }
}