import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_demo/res/components/round_button.dart';

class InternetExceptionScreen extends StatefulWidget {

  final VoidCallback onPressed;
  const InternetExceptionScreen({super.key,required this.onPressed});

  @override
  State<InternetExceptionScreen> createState() => _InternetExceptionState();
}

class _InternetExceptionState extends State<InternetExceptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.redColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: Get.width,),
          const Icon(Icons.cloud_off_outlined),
          const SizedBox(height: 10,),
          Text("internet_error".tr),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: widget.onPressed,
            child: Text(
              "retry".tr,
            ),
          ),
          RoundButton(onPressed: (){}, title: "fdkfd",height: 100,width: 300,),
        ],
      ),
    );
  }
}