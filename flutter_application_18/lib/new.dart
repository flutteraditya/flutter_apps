// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: TextFieldDemo(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class TextFieldDemo extends StatefulWidget{

//   const TextFieldDemo({super.key});

//   @override
//   State createState() => _TextFieldDemoState();
// }

// class _TextFieldDemoState extends State{


//   final TextEditingController _nameTEC = TextEditingController();
//   final TextEditingController _companyTEC = TextEditingController();
//   final TextEditingController _addressTEC = TextEditingController();
//   bool info1= false,info2= false,info3= false;

//   @override
//   void initState(){
//     super.initState();

//   }


//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Text Field"),
//         backgroundColor: Colors.grey,
        
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           const SizedBox(
//             width: double.infinity,
//             height: 30,
//           ),
//           TextField(
//             controller: _nameTEC,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               hintText: "enter your name",
//             ),
//             onSubmitted: (value){
//               info1 = true;
//               setState(() {});
//             },
//           ),
//           const SizedBox(
//             width: double.infinity,
//             height: 30,
//           ),
//           TextField(
//             controller: _companyTEC,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               hintText: "enter company name",
//             ),
//             onSubmitted: (value){
//               info2 = true;
//               setState(() {});
//             },
//           ),
//           const SizedBox(
//             width: double.infinity,
//             height: 30,
//           ),
//           TextField(
//             controller: _addressTEC,
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               hintText: "enter company address",
//             ),
//             onSubmitted: (value){
//               info3 = true;
//               setState(() {});
//             },
//           ),
//           (info1 && info2 && info3) ?
//           Container(
//             margin: const EdgeInsets.all(30),
//             padding: const EdgeInsets.all(30),
//             width: double.infinity,
//             color: Colors.grey,
//             child: Row( 
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children:[
//                     Text("Name: ${_nameTEC.text}"),
//                     const SizedBox(height: 10,),
//                     Text("Company: ${_companyTEC.text}"),
//                     const SizedBox(height: 10,),
//                     Text("Address: ${_addressTEC.text}"),
//                   ],
//                 ),
//                 Column(
//                   children:[
//                     Image.network("https://study.com/cimages/multimages/16/pexels-zetong-li-13641595_11670684066233696586.jpg",height: 100,width: 100,),
//                   ],
//                 ),
//               ]
//             ),
//           ):
//           const SizedBox(),
//         ],
//       ),
//     );
//   }
// }