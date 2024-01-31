import 'package:flutter/material.dart';

class Assign07 extends StatelessWidget{

  const Assign07({super.key});

  @override

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(title: const Text("Scrollable Images"),backgroundColor: Colors.red,),

      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),image: DecorationImage(image: NetworkImage("https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630"),),),),
                Image.network("https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",height: 300,width: 550,),
                Image.network("https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",height: 300,width: 550,),
                Image.network("https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",height: 300,width: 550,),
                Image.network("https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630",height: 300,width: 550,),
              ],
            ),
          )
        ],
      ),

    );
  }
}