import 'dart:convert';
import 'dart:developer';
import 'package:api_binding_demo01/homepage.dart';
import 'package:api_binding_demo01/model/modelclass.dart';
import 'package:http/http.dart' as http;

Future <void> getData()async{
  Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
  http.Response res = await http.get(url);
  try{
    json.decode(res.body);
  }catch(e){
    res = http.Response(
      {
        "status": "Error",
        "body": null,
        "message": "Multiple Request Found!"
      }.toString(),
      200
    );
  }
  // log(res.body);
  // log("${res.headers}");
  // log("${res.request}");
  // log("${res.statusCode}");
  // log(res.reasonPhrase!);
  Map mp = json.decode(res.body);
  log("$mp");
  fetchedData = ModelForAll(mp).data!;
  //return mp;
}

Future <ModelForOne> postData(Map mp) async{
  Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/create");
  http.Response res = http.Response("",100);
  try{
    res = await http.post(url,body: mp);
    log(res.body);
  }catch(e){
    res = http.Response({"status": "Error","body": null,"message": "Multiple Request Found!"}.toString(),404);
  }
  mp = json.decode(res.body);
  log("$mp");
  return ModelForOne(mp);
} 


Future <ModelForOne> putData(Map mp)async{
  Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/update/${mp["id"]}");
  http.Response res = await http.put(url,body: mp);
  mp = json.decode(res.body);
  return ModelForOne(mp);
}

Future <ModelForOne> deleteData(int id)async{

  Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/delete/$id");
  http.Response res = await http.delete(url);
  Map mp = json.decode(res.body);
  return ModelForOne(mp);
}