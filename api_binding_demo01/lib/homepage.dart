import 'dart:developer';
import 'package:api_binding_demo01/controller/datacontroll.dart';
import 'package:api_binding_demo01/model/modelclass.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
List fetchedData = [];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: fetchedData.length,
        itemBuilder: (context,i){
          return Container(
            height: 30,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 50,
                  child: Text(
                    "${fetchedData[i].empid}"
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    "${fetchedData[i].empName}"
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Text(
                    "${fetchedData[i].empAge}"
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: Text(
                    "${fetchedData[i].empSal}"
                  ),
                ),
              ],
            ),
          );
        }
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () async{
                await getData();
                log("$fetchedData");
                setState(() {
                  
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.black,
              ),
              child: const Text("get"),
            ),
            ElevatedButton(
              onPressed: () {
                bottomSheetDemo(context,false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
              ),
              child: const Text("post"),
            ),
            ElevatedButton(
              onPressed: () {
                bottomSheetDemo(context,true);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
              child: const Text("put"),
            ),
            ElevatedButton(
              onPressed: () {
                TextEditingController idController = TextEditingController();
                ModelForOne? md;
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => 
                  
                  AlertDialog(
                    title: (md == null) ?
                    const Text("Delete"):
                    Text("${md!.status}"),
                    content: (md == null) ?
                    const Text("Enter Id to Delete"):
                    Text("${md!.message}"),
                    actions: <Widget>[
                      (md == null) ?
                      TextFormField(
                        controller: idController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ) : const SizedBox(),
                      TextButton(
                        onPressed: ()async{
                          // ignore: unnecessary_null_comparison
                          if(md != null){
                            Navigator.of(context).pop();
                          }else{
                            md = await deleteData(int.parse(idController.text));
                          }
                          setState(() {
                              
                          });
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
                setState(() {
                  
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
              ),
              child: const Text("delete"),
            ),
          ],
        ),
      ],
    );
  }
}


void bottomSheetDemo(BuildContext context,bool isUpdate){
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController salController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    builder: (context){
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
          top: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              (isUpdate) ? "Update Info" : "Add Info",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (isUpdate) ?
                const Text(
                    "id",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ): const SizedBox(),
                  (isUpdate) ?
                  TextFormField(
                    controller: idController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ): const SizedBox(),
                  (isUpdate) ?
                  const SizedBox(
                    height: 10,
                  ): const SizedBox(),
                const Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Salary",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                  TextFormField(
                    controller: salController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Age",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                  TextFormField(
                    controller: ageController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
              ],
            ),
            Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.blue,
                    ),
                  ),
                  onPressed: () async{
                    ModelForOne? mo;
                    if(isUpdate){
                      mo = await putData(
                        {
                          "id" : idController.text,
                          "name" : nameController.text,
                          "salary" : salController.text,
                          "age" : ageController.text
                        }
                      );

                    }else{
                      mo = await postData(
                        {
                          "name" : nameController.text,
                          "salary" : salController.text,
                          "age" : ageController.text
                        }
                      );
                    }
                    log("${mo.message}");
                    showDialog(
                      // ignore: use_build_context_synchronously
                      context: context, 
                      builder: (_)=> AlertDialog(
                        title: Text("${mo!.status}"),
                        content: Text("${mo.message}"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () { 
                              nameController.clear();
                              salController.clear();
                              ageController.clear();
                              Navigator.pop(context, 'OK');
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    (isUpdate) ? "Update" : "Add",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
          ],
        ),
      );
    }
  );
}