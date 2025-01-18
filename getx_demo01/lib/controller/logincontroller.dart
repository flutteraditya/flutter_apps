
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

class LogInController extends GetxController{

  final userNameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;

  Future logInAPI()async{

    try{
      loading.value = true;
      Uri url = Uri.parse(
        "https://reqres.in/api/login");
      http.Response response = await http.post(
        url,
        body: {
          "email": userNameController.value.text,
          "password": passwordController.value.text
          },
      );
      Map mp = jsonDecode(response.body);

      if(response.statusCode == 200){
        Get.snackbar("login successful", mp["token"]);
      }
      loading.value = false;
    }
    catch(e){
      loading.value = false;
      Get.snackbar("exception occured", e.toString());
    }
  }
}