import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo01/controller/logincontroller.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  LogInController logInController = Get.put(LogInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In".tr),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: Get.width,),
          SizedBox(
            width: Get.width*.8,
            child: TextFormField(
              controller: logInController.userNameController.value,
              decoration: InputDecoration(
                hintText: "username".tr,
                prefixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            width: Get.width*.8,
            child: TextFormField(
              controller: logInController.passwordController.value,
              decoration: InputDecoration(
                hintText: "password".tr,
                prefixIcon: const Icon(Icons.password_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: Get.width*.8,
            child: Obx(() => 
              ElevatedButton(
                onPressed: () async{
                  await logInController.logInAPI();
                },
                child: logInController.loading.value ?
                const CircularProgressIndicator():
                Text("Log In".tr),
              ),
            ),
          ),
        ],
      ),
    );
  }
}