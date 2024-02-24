import 'package:flutter/material.dart';

class Netflix extends StatelessWidget{

  const Netflix({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Netflix",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.red),),
        backgroundColor: Colors.black,
      ),
      body: 
      SingleChildScrollView(   
        child:Column(
          children: [
            const SizedBox(
                height: 20,
            ),
            Container(
              width: double.infinity,
              height: 20,
              
              color: Colors.white,
              child: const Text("   Movies",style: TextStyle(fontWeight: FontWeight.w900),),
            ),
            const SizedBox(
                height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.black,
                      height: 300,
                      width: 200,

                      child: Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.black,
                      height: 300,
                      width: 200,
                      child: Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.black,
                      height: 300,
                      width: 200,
                      child: Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.black,
                      height: 300,
                      width: 200,
                      child: Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"),
                      
                    ),
                    
                  ],
                )
            ),
            const SizedBox(
                height: 20,
            ),
            Container(
              width: double.infinity,
              height: 20,
              
              color: Colors.white,
              child: const Text("   Web Series",style: TextStyle(fontWeight: FontWeight.w900),),
            ),
            const SizedBox(
                height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555"),
                  ),
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555"),
                  ),
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555"),
                  ),
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555"),
                  ),
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555"),
                  ),
                  
                ]
              )
            ),
            const SizedBox(
                height: 20,
            ),
            Container(
              width: double.infinity,
              height: 20,
              
              color: Colors.white,
              child: const Text("   Most Popupar",style: TextStyle(fontWeight: FontWeight.w900),),
            ),
            const SizedBox(
                height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc"),
                  ),
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc"),
                  ),
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc"),
                  ),
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc"),
                  ),
                  const SizedBox(
                      width: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 129.5,
                    width: 97.5,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc"),
                  ),
                  
                ]
              )
            ),

          ],
        ),
      ),
      );
  }
}