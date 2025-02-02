

import 'package:http/http.dart'as http;

Future getapi()async{

  Uri url = Uri.parse("https://api.restful-api.dev/objects/7");

  http.Response res = await http.get(url);

  return res;

}