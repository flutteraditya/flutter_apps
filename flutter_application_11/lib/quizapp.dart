import 'package:flutter/material.dart';
import 'variables.dart';

class QuizApp extends StatefulWidget{

  const QuizApp({super.key});
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp>{

  int queNo = 1,i = 0;

  void incrementCount(){
    setState((){
      if(queNo<5){
        queNo++;
      }
      if(i<4){
        i++;
      }
    });
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App",
          style:TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 147, 78, 231),
      ),
      body: Column(
        children:[
          Container(
            width: double.infinity,
            //height: 30,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 172, 131, 238),
              borderRadius: BorderRadius.all(Radius.circular(10),),
            ),
            alignment: Alignment.center,
            child: Text("Question: $queNo/5",style: const TextStyle(fontSize: 10,fontWeight: FontWeight.normal ),),
          ),
          Container(
            width: double.infinity,
            //height: 50,
            margin: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 172, 131, 238),
              borderRadius: BorderRadius.all(Radius.circular(10),),
            ),
            alignment: Alignment.center,
            child: Text(queList[i],style: const TextStyle(fontSize: 15),),
          ),
          Container(
            width: double.infinity, 
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: ElevatedButton(
                onPressed: (){},
                child: Text(opt1List[i])
              ),
          ),
          Container(
            width: double.infinity, 
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: ElevatedButton(
                onPressed: (){},
                child: Text(opt2List[i])
              ),
          ),Container(
            width: double.infinity, 
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: ElevatedButton(
                onPressed: (){},
                child: Text(opt3List[i])
              ),
          ),Container(
            width: double.infinity, 
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: ElevatedButton(
                onPressed: (){},
                child: Text(opt4List[i])
              ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          incrementCount();
        },
        child: const Icon(Icons.arrow_forward), 
      ),
    );
  }
}