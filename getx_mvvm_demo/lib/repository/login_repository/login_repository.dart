

import 'package:getx_mvvm_demo/data/network/network_api_services.dart';
import 'package:getx_mvvm_demo/res/app_urls/app_urls.dart';

class LogInRepository{

  final _apiServices = NetworkApiServices();

  Future logInApi(dynamic data)async{

    dynamic response = await _apiServices.postApi(AppUrls.logInUrl, data);

    return response;
  }
}