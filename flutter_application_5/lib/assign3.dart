import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget{
  const Assign3({super.key});
  @override
  State <Assign3> createState()=> _Assign3State();
}

class _Assign3State extends State<Assign3>{
  int? selectedIndex= 0;
  final List<String> imageList=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjreP1EtdHDcD2GNNe2O74_ztMNaaONFya9Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwfzKAVVfNbzUdFEx2auCHpYnEjad5GkG8ow&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEs4yUabmHYNCJsYH2tkzJ-PddFhxzxtz5mg&usqp=CAU",
  ];

  void showNextImage(){
    setState(() {
      if(selectedIndex!<imageList.length-1){
        selectedIndex= selectedIndex!+1;
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("display images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageList[selectedIndex!],
            height: 300,
            width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage,
              child: const Text("Next"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex= 0;
                });
              },
              child: const Text("reset"),
            )
          ],
        ) 
      ),
    );
  }
}