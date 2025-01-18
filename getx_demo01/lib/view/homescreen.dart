import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo01/controller/countercontroller.dart';
import 'package:getx_demo01/view/imagescreen.dart';
import 'package:getx_demo01/view/counterscreen.dart';
import 'package:getx_demo01/view/loginscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController cc = Get.put(CounterController(), tag: "one");

  ///getx controller created
  RxBool mode = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX".tr),
        backgroundColor: Colors.blue,
        //centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              mode.value = !mode.value;
              mode.value
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            },
            icon: Obx(() => mode.value
                ? const Icon(Icons.light_mode_outlined)
                : const Icon(Icons.dark_mode_outlined)),
          ),
          DropdownMenu(
              //menuHeight: Get.height*.1,
              //width: Get.width*.2,
              leadingIcon: const Icon(Icons.language_outlined),
              onSelected: (value) {
                //print("$value");
                Get.updateLocale(value!);
              },
              initialSelection: const Locale("en", "US"),
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: Locale("en", "US"), label: "english"),
                DropdownMenuEntry(value: Locale("hi", "IND"), label: "hindi"),
              ]),
        ],
      ),
      body: SizedBox(
        width: Get.width * 1, //width using getx for making responsive app
        child: ListView(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.all(4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey,
              ),
              child: Obx(() => Text(cc.counter.toString())),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: () {
                  Get.snackbar(
                    "hey there".tr,
                    "we are using getx".tr,
                    icon: const Icon(Icons.child_care),
                    snackPosition: SnackPosition.BOTTOM,
                    mainButton: TextButton(
                      onPressed: () {
                        Get.back(); //navigation using getx
                      },
                      child: Text("click me".tr),
                    ),
                  ); //getx utils snacbar
                },
                title: Text("Snacbar".tr),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: () {
                  Get.defaultDialog(
                    //default diallog using getx
                    title: "Dialog".tr,
                    //textConfirm: "ok",
                    ///textCancel: "cancel",
                    // onConfirm: () {
                    // },
                    // onCancel: () {
                    // },
                    middleText: "This is Default Dialog".tr
                  );
                },
                title: Text("Dialog".tr),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: () {
                  Get.bottomSheet(
                    Column(
                      children: [
                        Card(
                          color: Colors.grey,
                          child: ListTile(
                            onTap: () {
                              Get.to(const CounterScreen());
                            },
                            title: Text("Counter".tr), //navigation using getx
                          ),
                        ),
                        Card(
                          color: Colors.grey,
                          child: ListTile(
                            onTap: () {
                              Get.toNamed("/colorlist", arguments: [
                                "aditya",
                                "khetre"
                              ]);                                       //named route using getx
                            },
                            title: Text("Color List".tr),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                title: Text("Bottomsheet".tr),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: () {
                  Get.to(const CounterScreen());
                },
                title: Text("Counter".tr),                                  //navigation using getx
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: () {
                  Get.toNamed("/colorlist",arguments: ["aditya", "khetre"]); //named route using getx
                },
                title: Text("Color List".tr),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: () {
                  Get.to(const ImageScreen());
                },
                title: Text("Pick Image".tr),
              ),
            ),
            Card(
              color: Colors.grey,
              child: ListTile(
                onTap: () {
                  Get.to(const LogInScreen());
                },
                title: Text("Log In".tr),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cc.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
