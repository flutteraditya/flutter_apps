import 'package:expense_maneger/menudrawer.dart';
import 'package:flutter/material.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trash",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            height: 95,
            width: 370,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(206, 206, 206, 1),
                  width: 0.5,
                ),
              ),
            ),
            child: const Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.remove_circle,
                      size: 21,
                      color: Color.fromRGBO(204, 210, 227, 1),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Medicine",
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "500",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      "3 June | 11:50 AM",
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
      drawer: const MenuDrawer(),
    );
  }
}