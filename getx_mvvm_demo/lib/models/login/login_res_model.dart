

class LogInResModel{

  String? token;

  LogInResModel({this.token});

  LogInResModel.fromJson(Map<String,dynamic> json){
    token = json["token"];
  }

  Map<String,dynamic> toJson(){
    return {
      "token" : token
    };
  }
}