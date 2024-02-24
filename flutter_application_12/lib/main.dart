
import 'package:flutter/material.dart';
void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class ModelClass{

  final String question;
  final List <String> options;
  final int ansIndex;
  final String explain;

  const ModelClass(
    {
      required this.question,
      required this.options,
      required this.ansIndex,
      required this.explain
    }
  );
}

class _QuizAppState extends State{

  List allQuestions = [
    const ModelClass(
      question: "What is Dart?", 
      options: [
        "A programming language",
        "A web development framework",
        "A database management system",
        "A hardware device",
      ], 
      ansIndex: 0,
      explain: "Dart is a programming language developed by Google, designed for building scalable and high-performance applications for web, mobile, and desktop platforms."
    ),
    const ModelClass(
      question: "Which of the following is not a feature of Dart programming language?", 
      options: [
        "Asynchronous programming support",
        "Garbage collection",
        "Functional programming support",
        "Multithreading",
      ], 
      ansIndex: 3,
      explain: "Dart does not support multithreading, but it does support isolates, which are similar to threads but are lighter weight and do not share memory.",
    ),
    const ModelClass(
      question: "Which of the following is the correct syntax for a for loop in Dart?",
      options: [
        "for (var i = 0; i < 10; i++) {}",
        "for (i = 0; i < 10; i++) {}",
        "for (var i; i < 10; i++) {}",
        "for (i = 0; i < 10)",
      ], 
      ansIndex: 0,
      explain:  "In Dart, a for loop is defined using the “for” keyword, followed by the loop initialization, condition, and update statements, enclosed in parentheses.",
    ),
    const ModelClass(
      question: "What is the purpose of the “break” keyword in Dart?",
      options: [
        "To exit a function",
        "To terminate a loop or switch statement",
        "To jump to the beginning of a loop", 
        "To skip a single iteration of a loop",
      ], 
      ansIndex: 1,
      explain:  "The “break” keyword in Dart is used to terminate a loop or switch statement and immediately exit to the next statement after the loop or switch.",
    ),
    const ModelClass(
      question: "Which of the following is not a feature of Dart?",
      options: [
        "Type inference",
        "Asynchronous programming",
        "Garbage collection",
        "Block-level scope",
      ], 
      ansIndex: 3,
      explain: "Dart supports block-level scope, but it is not considered a unique feature of the language as it is also available in many other programming languages.",
    ),
  ];

  bool isQueScreen = true;
  bool isHomeScreen = true;
  bool isSubmitted = false;
  int queIndex = 0;
  int selectedOption = -1;
  int score = 0;

  Color? setColour(int buttonIndex){
    //isSubmitted = true;
    if(selectedOption != -1){
      isSubmitted = true;
      if(buttonIndex == allQuestions[queIndex].ansIndex){
        if(selectedOption == allQuestions[queIndex].ansIndex){
          score ++;
        }
        return Colors.green;
      }
      else if(selectedOption == buttonIndex){
        return Colors.red;
      }
    }
    return null;
  }

  Scaffold appScreen(){
    if(isQueScreen){
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
      backgroundColor: const Color.fromARGB(255, 231, 216, 253),
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
            child: Text("Question: ${queIndex+1}/${allQuestions.length}",
              style: const TextStyle(fontSize: 10,fontWeight: FontWeight.normal ),
            ),
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
            child: Text(allQuestions[queIndex].question,style: const TextStyle(fontSize: 15),),
          ),
          Container(
            width: double.infinity, 
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(setColour(0)),
                ),
                onPressed: (){
                  if(selectedOption == -1){
                    selectedOption = 0;
                    setState(() {});
                  }
                },
                child: Text(allQuestions[queIndex].options[0])
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
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(setColour(1)),
                ),
                onPressed: (){
                  if(selectedOption == -1){
                    selectedOption = 1;
                    setState(() {});
                  }
                },
                child: Text(allQuestions[queIndex].options[1])
              ),
          ),Container(
            width: double.infinity, 
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(setColour(2)),
                ),
                onPressed: (){
                  if(selectedOption == -1){
                    selectedOption = 2;
                    setState(() {});
                  }
                },
                child: Text(allQuestions[queIndex].options[2])
              ),
          ),Container(
            width: double.infinity, 
              margin: const EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(setColour(3)),
                ),
                onPressed: (){
                  if(selectedOption == -1){
                    selectedOption = 3;
                    setState(() {});
                  }
                },
                child: Text(allQuestions[queIndex].options[3])
              ),
          ),
          (isSubmitted) ?
          Container(
            width: double.infinity,
            //height: 30,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 215, 191, 250),
              borderRadius: BorderRadius.all(Radius.circular(10),),
            ),
            alignment: Alignment.center,
            child: Text("Explaination: ${allQuestions[queIndex].explain}",
              style: const TextStyle(fontSize: 13,fontWeight: FontWeight.normal ),
            ),
          ) : const SizedBox(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          if(isSubmitted){
            isSubmitted = false;
            selectedOption = -1;
            if(queIndex < allQuestions.length-1){
              queIndex ++;
            }
            else{
              isQueScreen = false;
            }
          }
          setState(() {});
        },
        tooltip: (isSubmitted) ? "next question" : "please select the answer",
        child: const Icon(Icons.arrow_forward), 
      ),
      );
    }
    else{
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
      backgroundColor: const Color.fromARGB(255, 231, 216, 253),
      body: SizedBox(
        width: double.infinity,
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/trophy.png",
            height: 200,width: 200,
          ),
          const SizedBox(height: 20,),
          const Text("Congrats...!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Text("You Got $score/${allQuestions.length} "),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              score = 0;
              queIndex = 0;
              selectedOption = -1;
              isSubmitted = false;
              isQueScreen = true;
              setState(() {});
            }, 
            style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.green),
            ),
            child: const Text("reset"),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              score = 0;
              queIndex = 0;
              selectedOption = -1;
              isSubmitted = false;
              isQueScreen = true;
              isHomeScreen = true;
              setState(() {});
            }, 
            style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.red)
            ),
            child: const Text("exit"),
          ),
        ],
      ),
      )
      );
    }
  }

  @override
  Widget build(BuildContext context){

    return (isHomeScreen) ? 
      Scaffold(
        appBar: AppBar(
        title: const Text("Quiz App",
          style:TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 147, 78, 231),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 216, 253),
      body: SizedBox(
        width: double.infinity,
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/home.png",height: 200),
          const SizedBox(height: 20,),
          const Text("Quiz on Dart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Text("Number of Questions: ${allQuestions.length} "),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              isHomeScreen = false;
              setState(() {});
            }, 
            style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.green),
            ),
            child: const Text("Start Quiz"),
          ),
        ],
      ),
      )
      ) : 
      appScreen();
  }
}