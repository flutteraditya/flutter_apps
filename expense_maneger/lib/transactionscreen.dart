import 'package:expense_maneger/menudrawer.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {

  void addBottomSheet(){

    showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 25,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Date",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 5,),
                  SizedBox(
                    height: 36,
                    width: 316,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Amount",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 5,),
                  SizedBox(
                    height: 36,
                    width: 316,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 5,),
                  SizedBox(
                    height: 36,
                    width: 316,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 5,),
                  SizedBox(
                    height: 36,
                    width: 316,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  
                ],
              ),
              ElevatedButton(
                onPressed: (){
                      // Navigator.pushReplacement(
                      //   context, 
                      //   MaterialPageRoute(builder: (context)=> const TransactionScreen()),
                      // );
                }, 
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(123, 40),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 8,
                  ),
                  foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(67)
                  ),
                ),
                child: const Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }

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
        // leading: GestureDetector(
        //   onTap: () {
            
        //   },
        //   child: const Icon(
        //     Icons.menu,
        //   ),
        // ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context,i){
          return Container(
            height: 70,
            width: 370,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(206, 206, 206, 1),
                )
              )
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey,
                        image: const DecorationImage(image: AssetImage("assets/png/01.png"))
                      ),
                    ),
                    const SizedBox(width: 15,),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Medicine",
                                maxLines: 1,
                                style:TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Spacer(),
                            Icon(
                              Icons.remove_circle,
                              size: 15,
                              color: Color.fromRGBO(246, 113, 49, 1),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "475",
                              maxLines: 1,
                              style:TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                              ),
                            )
                            ],
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the ",
                            maxLines: 1,
                            style:TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                    ), 
                  ],
                ),  
                const Row(
                  children: [
                    Spacer(),
                    Text(
                      "3 June | 11:50 AM",
                      maxLines: 1,
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          addBottomSheet();
          setState(() {
            
          });
        }, 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        label: const Text(
          "Add Transaction ",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        icon: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: const Color.fromRGBO(14, 161, 125, 1),
          ),
          child: const Icon(
            Icons.add,
            size: 17,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: const MenuDrawer(),
    );
  }
}