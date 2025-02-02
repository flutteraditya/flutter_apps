import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:sample_api/controller/apires.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    RxString response = "".obs;

    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Obx(() => Text(
              response.value
            )),
            Center(
              child: ElevatedButton(
                onPressed: ()async{
                  http.Response res= await getapi();

                  response.value = res.statusCode.toString();
                },
                child : Text("get"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
