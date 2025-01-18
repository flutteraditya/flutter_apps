


import 'dart:convert';
import 'dart:io';

import 'package:getx_mvvm_demo/data/exceptions/app_exceptions.dart';
import 'package:getx_mvvm_demo/data/network/base_api_services.dart';
import 'package:http/http.dart'as http;

class NetworkApiServices extends BaseApiServices{

  @override
  Future getApi(String url)async{

    dynamic responseJson;
    try{

      final response = await http.post(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }
    on SocketException{
      throw InternetException("Please Check Internet Connection");
    }
    on TimeOutException{
      TimeOutException("Please Try Again");
    }
    return responseJson;
  }

  @override
  Future postApi(String url, dynamic data)async{

    dynamic responseJson;
    try{

      final response = await http.post(Uri.parse(url),body: data).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }
    on SocketException{
      throw InternetException("Please Check Internet Connection");
    }
    on TimeOutException{
      TimeOutException("Please Try Again");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response){

    switch(response.statusCode){
      case 200:
      {
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      }
      case 400:
      {
        throw InvalidUrlException("Please Enter Correct URL");
      }
      default:
      {
        throw FetchDataException("Please Try Again");
      }
    }
  }
}