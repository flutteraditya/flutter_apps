import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  const Search({super.key});
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search>{

  @override

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
         // color: Colors.grey,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10),),
            color: Colors.grey,
          ),
          child: const Row(
            children: [
              SizedBox(width: 10,height: 30,),
              Icon(Icons.search,size: 15,),
              SizedBox(width: 10,),
              Text("Search",style: TextStyle(fontSize: 10),)
            ],
          ),
        ),
        backgroundColor: Colors.black,

      ),
    );
  }
}