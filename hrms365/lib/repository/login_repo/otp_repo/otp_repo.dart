

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:hrms365/res/api_keys/api_keys.dart';
import 'package:http/http.dart' as http;

class OtpRepo{

  static Future varifyUser(String api, Map data)async{
    Map<String,dynamic> jsonResponse = await postOtp(api, data);
    return jsonResponse;
  }

  static Future varifyOtp(String api, Map data)async{
    Map<String,dynamic> jsonResponse = await postOtp(api, data);
    return jsonResponse;
  }

  static Future changePassword(String api, Map data)async{
    Map<String,dynamic> jsonResponse = await postOtp(api, data);
    return jsonResponse;
  }

  static Future postOtp(String api, Map data)async{
    
    Map<String,dynamic> jsonResponse;
    try{
      Uri url = Uri.parse(api);
      http.Response response = await http.post(
        url,
        body: data
      ).timeout(const Duration(seconds: 10));
      log(response.body);
      jsonResponse = checkStatus(response,api);
    }on SocketException{
      throw http.ClientException("No Internet");
    }on TimeoutException{
      throw TimeoutException("Request TimeOut");
    }
    return jsonResponse;
  }

  static Map<String,dynamic> checkStatus(http.Response response,String api){

    switch(response.statusCode){
      case 200:{
        return json.decode(response.body);
      }
      case 406:{
        if(api == ApiKeys.varifyOtp){
          throw Exception("invalid otp");
        }
        throw Exception("User not Found");
      }
      case 403:{
        throw Exception("Access Denied Incorrect Credentials");
      }
      default :{
        throw Exception("Something went Wrong!");
      }
    }
  }
}