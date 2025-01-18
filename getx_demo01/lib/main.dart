import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo01/controller/languages.dart';
import 'package:getx_demo01/view/homescreen.dart';
import 'package:getx_demo01/view/counterscreen.dart';
import 'package:getx_demo01/view/colorlistscreen.dart';
import 'package:getx_demo01/view/imagescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(                               //instead using MaterialApp we use GetMAterialApp to access functionallity of getx
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      // routes: {                                        //use in normal route method
      //   "/login" :(context) => const LogInScreen(),
      // },
      getPages: [                                          // used in getx route method
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(name: "/counter", page: () => const CounterScreen()),
        GetPage(name: "/colorlist", page: () => const ColorListScreen()),
        GetPage(name: "/pickimg", page: () => const ImageScreen()),
      ],
      locale: const Locale('en','US'),                        //for languages 
      fallbackLocale: const Locale('en','US'),
      translations: Languages(),
    );
  }
}
