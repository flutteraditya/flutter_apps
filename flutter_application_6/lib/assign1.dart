import 'package:flutter/material.dart';

class Assign1 extends StatefulWidget{
  const Assign1({super.key});

  @override
  State<Assign1> createState() => _Assign1State();
}

class _Assign1State extends State<Assign1>{
  
  int? _countPal= 0;
  int? _countAmst= 0;
  int? _countStr= 0;

  final List<int> list1=[12,153,9,11,145];
  

  void palCheck(){
    _countPal= 0;
    setState(() {
      for(int i=0;i<5;i++){
        int temp= list1[i];
        int rev= 0;
        while(temp!=0){
          int temp1= temp%10;
          rev= rev*10+temp1;
          temp= temp~/10;
        }
        if(rev==list1[i]){
          _countPal= _countPal!+1;
        }
      }
    });
  }

  void amstrCheck(){
    _countAmst= 0;
    setState(() {
      for(int i=0;i<5;i++){
        int temp= list1[i];
        int rev=0;
        int count=0;
        while(temp!=0){
          count++;
          temp= temp~/10;
        }
        temp= list1[i];
        while(temp!=0){
          int x= temp%10;
          int y= 1;
          for(int j=1;j<=count;j++){
            y= x*y;
          }
          rev= rev+y;
          temp= temp~/10;
        }
        if(rev==list1[i]){
          _countAmst= _countAmst!+1;
        }
      }

    });


  }

  void strCheck(){
    _countStr= 0;
    setState(() {
      for(int i=0;i<5;i++){
        int temp= list1[i];
        int sum=0;
        while(temp!=0){
          int x=temp%10;
          int y=1;
          while(x!=0){
            y=y*x;
            x--;
          }
          sum=sum+y;
          temp= temp~/10;
        }
        if(sum==list1[i]){
          _countStr=_countStr!+1; 
        }
      }
        });


  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Display Count",style: TextStyle(color:Colors.black, fontWeight: FontWeight.bold ),),
        backgroundColor: Colors.orange,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 192, 251, 64),
                      height: 50,
                      width: 460,
                      child:Center(child: Text("$list1",style:const TextStyle(color:Color.fromARGB(255, 67, 2, 246),fontWeight: FontWeight.bold))), 
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                )
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.yellow,
                      height: 50,
                      width: 100,
                      child:Center(child: Text("$_countPal")), 
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: palCheck,
                      child: const Text("Check Pal Count"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () { 
                        setState(() {
                          _countPal = 0;
                      });
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: const Text("Reset"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.yellow,
                      height: 50,
                      width: 100,
                      child:Center(child: Text("$_countAmst")), 
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: amstrCheck,
                      child: const Text("Check Amstrong Count"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () { 
                        setState(() {
                          _countAmst = 0;
                      });
                      
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: const Text("Reset"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.yellow,
                      height: 50,
                      width: 100,
                      child:Center(child: Text("$_countStr")), 
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: strCheck,
                      child: const Text("Check Strong Count"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () { 
                        setState(() {
                          _countStr = 0;
                      });
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: const Text("Reset"),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
    );
  }


}