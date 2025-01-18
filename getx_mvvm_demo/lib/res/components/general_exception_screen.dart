import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralExceptionScreen extends StatefulWidget {

  final VoidCallback onPressed;
  const GeneralExceptionScreen({super.key,required this.onPressed});

  @override
  State<GeneralExceptionScreen> createState() => _InternetExceptionState();
}

class _InternetExceptionState extends State<GeneralExceptionScreen> {
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
          Text("general_error".tr),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: widget.onPressed,
            child: Text(
              "retry".tr,
            ),
          ),
        ],
      ),
    );
  }
}