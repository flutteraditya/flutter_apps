import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
} 

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListViewDemo(),
      ),
    );
  }
}


class ListViewDemo extends StatefulWidget{

  const ListViewDemo({super.key});
  @override
  State createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State{


  Map players = {
    0 : [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg/330px-Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
      "https://pbs.twimg.com/media/GEik6CDW4AQywBl?format=jpg&name=medium",
      "https://images.thequint.com/thequint%2F2023-02%2Fdc0f42d7-ce10-45a1-8415-8af02339727b%2FPINKDM3008.JPG",
    ],
    1 : [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg/330px-Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
      "https://pbs.twimg.com/media/GEik6CDW4AQywBl?format=jpg&name=medium",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/372600/372600.jpg",
    ],
    2 : [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg/330px-Virat_Kohli_during_the_India_vs_Aus_4th_Test_match_at_Narendra_Modi_Stadium_on_09_March_2023.jpg",
      "https://img.mensxp.com/media/content/2022/Aug/Header-Image-Credit-Twitter-Shubman-Gill_630df04a14788.jpeg",
      "https://images.indianexpress.com/2023/11/Mohammed-Shami-3.jpg",
    ],
  };
  List crickFormat = ["t20i","odi","testi"];
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          "List View",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index){
          int listIndex = index;
          return ListView.builder(
              shrinkWrap: true,
              itemCount: players[index].length,
              itemBuilder: (BuildContext context, int index,){
              return (listIndex==0 && index==0) ?             
              Column(
                children: [
                  Container(
                    height: 20,
                    width: double.infinity,
                    color: Colors.black,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Text(crickFormat[index],style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white) ,)
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    color: Colors.grey,
                    child: Image.network("${players[listIndex][index]}"),
                  ),
                ],
              ):
              Container(
                height: 300,
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                color: Colors.grey,
                child: Image.network("${players[listIndex][index]}"),
              );
            },
          );
        }, 
        separatorBuilder: (BuildContext context, int index){
          return Container(
            height: 20,
            width: 200,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            color: Colors.black,
            child: Text(crickFormat[index],style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white) ,),
          );
         }, 
        itemCount: players.length,
      ),
    );
  }
}