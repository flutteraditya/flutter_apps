// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MainApp());
// }
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: QuizApp(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
// class QuizApp extends StatefulWidget {
//   const QuizApp({super.key});
//   @override
//   State createState() => _QuizAppState();
// }

// class _QuizAppState extends State {
//   List<Map> allQuestions = [
//     {
//     "question": "Who is the founder of Microsoft?",
//     "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
//     "answerIndex": 2,
//     },
//     {
//     "question": "Who is the founder of Apple?",
//     "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
//     "answerIndex": 0,
//     },
//     {
//     "question": "Who is the founder of Amazon?",
//     "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
//     "answerIndex": 1,
//     },
//     {
//     "question": "Who is the founder of Tesla?",
//     "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
//     "answerIndex": 3,
//     },
//     {
//     "question": "Who is the founder of Google?",
//     "options": ["Steve Jobs", "Lary Page", "Bill Gates", "ElonMusk"],
//     "answerIndex": 1,
//     },
//   ];
//   List flg = [true,true,true,true];
//   int scoreGain = 0;
//   int questionIndex = 0;
//   //int ansIndex = 0;
//   bool scoreFlag = true;
//   bool isSubmitted= false;
//   bool questionScreen = true;

//   Color setColour(int index){
//     isSubmitted= true;
//     int ansIndex = allQuestions[questionIndex]["answerIndex"];
//     if(index== ansIndex){
//       if(scoreFlag){
//         scoreGain++;
//         scoreFlag= false;
//       }
//       return Colors.green;
//     }
//     else{
//       //flg[0]=flg[1]=flg[2]=flg[3] = true;
//       scoreFlag= false;
//       flg[ansIndex]= false;
//       return Colors.red;
//     }
//   }

//   Scaffold isQuestionScreen() {
//     if (questionScreen == true) {
//       return Scaffold(
//         backgroundColor: const Color.fromARGB(255, 156, 219, 249),
//         appBar: AppBar(
//           title: const Text(
//           "QuizApp",
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.w800,
//               color: Colors.orange,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//           children: [
//             const SizedBox(
//               height: 25,
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                 "Questions : ",
//                 style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.w600,
//                 ),
//                 ),
//                 Text(
//                 "${questionIndex + 1}/${allQuestions.length}",
//                   style: const TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ]
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Container(
//               width: double.infinity,
//               height: 50,
//               alignment: Alignment.center,
//               margin: const EdgeInsets.all(5),
//               color: Colors.lightBlue,
//               child: Text(
//                 allQuestions[questionIndex]["question"],
//                 style: const TextStyle(
//                   fontSize: 23,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if(isSubmitted==false){
//                   setState(() {
//                     flg[0] = false;
//                   });
//                 }
//               },
//               style: ButtonStyle(
//                 backgroundColor: flg[0] ? 
//                 const MaterialStatePropertyAll(null) :  
//                 MaterialStatePropertyAll(setColour(0)),
//               ),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: Text(
//                 "A.${allQuestions[questionIndex]["options"][0]}",
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if(isSubmitted==false){
//                   setState(() {
//                     flg[1] = false;
//                   });
//                 }
//               },
//               style: ButtonStyle(
//                 backgroundColor: flg[1] ? 
//                 const MaterialStatePropertyAll(null) :  
//                 MaterialStatePropertyAll(setColour(1)),
//               ),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: Text(
//                 "B.${allQuestions[questionIndex]["options"][1]}",
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if(isSubmitted==false){
//                   setState(() {
//                     flg[2] = false;
//                   });
//                 }
//               },
//               style: ButtonStyle(
//                 backgroundColor: flg[2] ? 
//                 const MaterialStatePropertyAll(null) :  
//                 MaterialStatePropertyAll(setColour(2)),
//               ),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: Text(
//                 "C.${allQuestions[questionIndex]["options"][2]}",
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//               ),
//             ),

//             const SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if(isSubmitted==false){
//                   setState(() {
//                     flg[3] = false;
//                   });
//                 }
//               },
//               style: ButtonStyle(
//                 backgroundColor: flg[3] ? 
//                 const MaterialStatePropertyAll(null) :  
//                 MaterialStatePropertyAll(setColour(3)),
//               ),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: Text(
//                 "D.${allQuestions[questionIndex]["options"][3]}",
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               if(isSubmitted){
//                 if(allQuestions.length -1 > questionIndex){
//                   questionIndex++;
//                 }
//                 else{
//                   questionScreen= false;
//                 }
//                 flg[0]=flg[1]=flg[2]=flg[3] = true;
//                 scoreFlag = true;
//               }
//               isSubmitted = false;
//             });
//           },
//           backgroundColor: Colors.blue,
//           child: const Icon(
//             Icons.forward,
//             color: Colors.orange,
//           ),
//         ),
//       );
//     }
//     else {
//       return  Scaffold(
//         backgroundColor: const Color.fromARGB(255, 215, 111, 229),
//         appBar: AppBar(
//           title: const Text(
//           "QuizApp",
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.w800,
//               color: Colors.orange,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: Container(
//           width: double.infinity,
//           color: const Color.fromARGB(255, 156, 219, 249),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text("Congratulations..!",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Text("Score $scoreGain/${allQuestions.length}"),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   setState(() {
//                     questionScreen = true;
//                     scoreGain = 0;
//                     questionIndex = 0;
//                   });
//                 }, 
//                 style: const  ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(Colors.red)
//                 ),
//                 child: const Text("retest")
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//   return isQuestionScreen();
//   }
// }