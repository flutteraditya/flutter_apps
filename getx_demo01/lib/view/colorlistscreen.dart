import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo01/controller/listcontroller.dart';

class ColorListScreen extends StatefulWidget {
  const ColorListScreen({super.key});

  @override
  State<ColorListScreen> createState() => _ColorListScreenState();
}

class _ColorListScreenState extends State<ColorListScreen> {
  ListController colors = Get.put(ListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color List".tr),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("${Get.arguments}"),
          Expanded(
            child: ListView.builder(
              itemCount: colors.colorList.length,
              itemBuilder: (context,i){
                return ListTile(
                  title: Text(colors.colorList[i]),
                  onTap: () {
                    colors.favColorList.contains(colors.colorList[i]) ?
                    colors.rmFavColorList(colors.colorList[i]) :
                    colors.addFavColorList(colors.colorList[i]);
                  },
                  trailing: Obx(() => 
                    Icon(
                      Icons.favorite,
                      color: 
                      colors.favColorList.contains(colors.colorList[i]) ?
                      Colors.red :
                      Colors.grey,
                    ),
                  ),
                );
              } 
            ),
          ),
        ],
      ),
    );
  }
}