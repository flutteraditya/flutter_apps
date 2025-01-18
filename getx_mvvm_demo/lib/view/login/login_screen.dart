
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getx_mvvm_demo/res/colors/app_colors.dart';
import 'package:getx_mvvm_demo/res/components/round_button.dart';
import 'package:getx_mvvm_demo/utils/utils.dart';
import 'package:getx_mvvm_demo/view_models/controller/login_controller/login_controller.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  
  LogInController logInController = Get.put(LogInController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login".tr),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: logInController.userNameController.value,
                focusNode: logInController.userNameFocus.value,
                validator: (value) {
                  if(logInController.userNameController.value.text.isEmpty){
                    //Utils.snacBar("username_hint".tr, "please_enter_username".tr);
                    return "please_enter_username".tr;
                  }
                  else if(F){
                    //Utils.snacBar("username_hint".tr, "please_enter_valid_username".tr);
                    return null;
                  }
                  else{
                    return null;
                  }

                },
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(context, logInController.userNameFocus.value, logInController.passwordFocus.value);
                },
                decoration: InputDecoration(
                  hintText: "username_hint".tr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: logInController.passwordController.value,
                focusNode: logInController.passwordFocus.value,
                validator: (value) {
                  if(logInController.userNameController.value.text.isEmpty){
                    //Utils.snacBar("password_hint".tr, "please_enter_password".tr);
                    return "please_enter_password".tr;
                  }
                  else if(F){
                    Utils.snacBar("password_hint".tr, "please_enter_valid_password".tr);
                    return "please_enter_valid_password".tr;
                  }
                  else{
                    return null;
                  }
                },
                onFieldSubmitted: (value) {
                  Utils.fieldFocusChange(context, logInController.userNameFocus.value, logInController.passwordFocus.value);
                },
                decoration: InputDecoration(
                  hintText: "password_hint".tr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              RoundButton(
                height: 50,
                width: 300,
                loading: logInController.loading.value,
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    logInController.logInApi();
                  }
                }, 
                title: "login".tr
              ),
            ],
          ),
        ),
      ),
    );
  }
}