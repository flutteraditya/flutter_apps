
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo01/controller/pickimagecontroller.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {

  ImagePickController imgController = Get.put(ImagePickController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Image".tr),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            width: Get.width,
          ),
          Obx(() =>
            (imgController.imgPath.isNotEmpty) ?
            Container(
              width: Get.width*.8,
              height: Get.height*.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(
                    File(imgController.imgPath.toString()),
                  ),
                ),
              ),
            ): 
            const SizedBox(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          await  imgController.pickImage();
        },
        child: const Icon(Icons.image),
      ),
    );
  }
}