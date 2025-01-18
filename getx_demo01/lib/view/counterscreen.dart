import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo01/controller/countercontroller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  final CounterController cc = Get.put(CounterController(),tag: "one");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter".tr),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(width: Get.width,),
          Container(
            height: Get.width*.3,
            width: Get.width*.3,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Get.height),
              color: const Color.fromARGB(255, 171, 215, 237),
            ),
            child: Obx(() => Text(cc.counter.toString())),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Timer.periodic(const Duration(seconds: 1), (timer) {
            cc.incrementCounter();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}