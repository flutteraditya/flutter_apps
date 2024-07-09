
class ModelForAll{
  String? status;
  List? data;
  String?  message;

  ModelForAll(Map response){
    status = response["status"];
    message = response["message"];
    data = [];
    if(response["data"] != null){
      response["data"].forEach((json) {
        data!.add(Data(json));
      });
    }
  }
}

class Data{

  int? empid;
  String? empName;
  int? empSal;
  int? empAge;
  String? empImg;

  Data(Map json){
    empid = json["id"];
    empName = json["employee_name"];
    empSal = json["employee_salary"];
    empAge = json["employee_age"];
    empImg = json["profile_image"];
  }
}


class ModelForOne{
  String?  status;
  Data? data;
  String?  message;

  ModelForOne(Map response){
    status = response["status"];
    message = response["message"];
    if(response["data"].runtimeType == Map){
      data = Data(response["data"]);
    }
  }
}