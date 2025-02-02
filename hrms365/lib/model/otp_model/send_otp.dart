class SendOtp {
  int? statusCode;
  String? msg;
  Data? data;

  SendOtp({this.statusCode, this.msg, this.data});

  SendOtp.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status_code'] = statusCode;
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? email;
  int? mobileNo;
  String? username;

  Data({this.email, this.mobileNo, this.username});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    mobileNo = json['mobile_no'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['mobile_no'] = mobileNo;
    data['username'] = username;
    return data;
  }
}