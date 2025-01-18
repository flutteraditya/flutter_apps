

import 'package:getx_mvvm_demo/data/response/status.dart';

class ApiResponse<T>{

  Status? status;
  T? data;
  String? massage;

  ApiResponse({this.status,this.data,this.massage});

  ApiResponse.complete(this.data): status = Status.complete;
  ApiResponse.loading(): status = Status.loading;
  ApiResponse.error(this.massage): status = Status.error;


  @override
  String toString(){

    return "status: $status, data: $data, massage: $massage";
  }
}