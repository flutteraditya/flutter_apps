import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "June 2022",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: const Icon(
          Icons.menu,
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10,),
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context,i){
          return Container(
            height: 60,
            width: 360,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "data",
                            style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                            ),
                          
                          ),
                          Text(
                            "data",
                            style:TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400
                            ),
                          ),

                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.remove_circle),
                    Text(
                      "data",
                      style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                            ),
                    )
                  ],
                ),  
                Row(
                  children: [
                    Spacer(),
                    Text(
                      "data",
                      style:TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400
                            ),
                    )
                  ],
                ),              
              ],
            ),
          );
        }
      
      ),
    );
  }
}