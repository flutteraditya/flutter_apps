import 'package:expense_maneger/menudrawer.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void categoryBottomSheet(){

    showModalBottomSheet(
      context: context, 
      builder: (context){
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                offset: Offset(0,-3),
                blurRadius: 8,
              ),
            ],
          ),
          child: ListView(
            children: [
              const SizedBox(height: 35,),
              Column(
                children: [
                  Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(74),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/png/04.png",
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Image URL",
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
                          cursorHeight: 20,
                          decoration: InputDecoration(
                            hintText: "Enter URL",
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
                            hintText: "Enter category name",
                            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
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
          "Categories",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
        ),
        padding: const EdgeInsets.all(25),
        itemCount: 4,
        itemBuilder: (context,i){
          return Container(
            height: 150,
            width: 145,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(1,2),
                  blurRadius: 8,
                ),
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 74,
                  width: 74,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(74),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/png/04.png",
                      )
                    )
                  ),
                ),
                const SizedBox(height: 15,),
                const Text(
                  "Food",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(33, 33, 33, 1),
                  ),
                ),
              ],
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          categoryBottomSheet();
          setState(() {
            
          });
        }, 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        label: const Text(
          "Add Category ",
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