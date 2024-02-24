import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFieldDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextFieldDemo extends StatefulWidget{

  const TextFieldDemo({super.key});

  @override
  State createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State{

  List info = [
    {
      "name": "",
      "company" : "",
      "address": "",
    }
  ];

  final TextEditingController _nameTEC = TextEditingController();
  final TextEditingController _companyTEC = TextEditingController();
  final TextEditingController _addressTEC = TextEditingController();
  bool info1= false,info2= false,info3= false;

  @override
  void initState(){
    super.initState();
  }

  void setData(){

      info.add(
        {
          "name":_nameTEC.text,
          "company":_companyTEC.text,
          "address":_addressTEC.text
        }
      );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
        backgroundColor: Colors.grey,
        
        centerTitle: true,
      ),
      body: ListView(
        //shrinkWrap: true,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          TextField(
            controller: _nameTEC,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "enter your name",
            ),
            onChanged: (value){
              info1 = true;
            },
          ),
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          TextField(
            controller: _companyTEC,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "enter company name",
            ),
            onChanged: (value){
              info2 = true;
            },
          ),
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          TextField(
            
            controller: _addressTEC,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "enter company address",
            ),
            onChanged: (value){
              info3 = true;
            },
          ),
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          ElevatedButton(
            onPressed: (){
              if(info1 && info2 && info3){
                info1 = info2 = info3 = false;
                setState(() {
                  setData();
                });
              }
            },
            child: const Text("submit"),
          ),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          
          ListView.builder(
            //scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (BuildContext context,int index){

              return Container(
                //height: 300,
                //width: 100,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                //color: Colors.grey,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                //   gradient: RadialGradient(
                //     radius: 1,
                //     //focalRadius: 10,
                //     colors: [
                //     Colors.red,
                //     Colors.green,
                //     Colors.blue,
                //   ]
                // ),
                ),
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text("Name: ${info[index]["name"]}"),
                        const SizedBox(height: 10,),
                        Text("Company: ${info[index]["company"]}"),
                        const SizedBox(height: 10,),
                        Text("Address: ${info[index]["address"]}"),
                      ],
                    ),
                    Column(
                      children:[
                        Image.network(
                          "https://study.com/cimages/multimages/16/pexels-zetong-li-13641595_11670684066233696586.jpg",
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ]
                ),
              );
              // return Container(
              //   height: 100,
              //   width: 100,
              // );
            }
          ),
        ],
      ),
    );
  }
}