
import 'package:getx_mvvm_demo/models/login/login_res_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesController {

  Future<bool> saveUser(LogInResModel user)async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("token", user.token!);
    return true;
  }

  Future<LogInResModel> getUser()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString("token");
    return LogInResModel(token: token);
  }

  Future<bool> removeUser()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }

}