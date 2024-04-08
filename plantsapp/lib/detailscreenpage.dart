import 'package:flutter/material.dart';

class DetailScreenPage extends StatefulWidget {
  const DetailScreenPage({super.key});

  @override
  State<DetailScreenPage> createState() => _DetailScreenPageState();
}

class _DetailScreenPageState extends State<DetailScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60,),
          Row(
            children: [
              const SizedBox(width: 10,),
              IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.arrow_back),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Image.asset(
            "assets/png/image03.png",
            height: 244,
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[800]
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[400]
                ),
              ),
              const SizedBox(width: 5,),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[400]
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),

        ],
      ),
    );
  }
}