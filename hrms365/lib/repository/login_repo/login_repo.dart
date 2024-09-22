import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class LoginRepo {

  static Future postUser(String api, Map data)async{
    
    Map<String,dynamic> jsonResponse;
    try{
      Uri url = Uri.parse(api);
      http.Response response = await http.post(
        url,
        body: data
      ).timeout(const Duration(seconds: 10));

      jsonResponse = checkStatus(response);
    }on SocketException{
      throw http.ClientException("No Internet");
    }on TimeoutException{
      throw TimeoutException("Request TimeOut");
    }
    return jsonResponse;
  }

  static Map<String,dynamic> checkStatus(http.Response response){

    switch(response.statusCode){
      case 200:{
        return json.decode(response.body);
      }
      case 406:{
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


