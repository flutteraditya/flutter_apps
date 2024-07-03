import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("in mainapp build");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context){
            return CountryModelClass(pmName: "N.D.Modi");
          }
        ),
        ChangeNotifierProvider(
          create: (context){
            return StateModelClass(stateName: "Maharashtra", cmName: "Eknath Shinde");
          }
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    log("in homepage build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer2"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FetchData(),
          // Text(Provider.of<CountryModelClass>(context).countryName),
          const SizedBox(height: 10,width: double.infinity,),
          ElevatedButton(
            onPressed: (){
              Provider.of<CountryModelClass>(context,listen: false).changeData("waiting..");
              //Provider.of<CountryModelClass>(context,listen: false).countryName = "Bharat";
              Provider.of<StateModelClass>(context,listen: false).changeData("UP", "Yogi Adityanath");
            }, 
            child: const Text("changeData"),
          ),
        ],
      ),
    );
  }
}

class FetchData extends StatelessWidget {
  const FetchData({super.key});

  @override
  Widget build(BuildContext context) {
    log("in fetchdata build");
    return Consumer2(
      builder: (context,provider1,provider2,child){
        log("in consumer2");
        return Column(
          children: [
            Text(Provider.of<CountryModelClass>(context).countryName),
            const SizedBox(height: 5,),
            Text(Provider.of<CountryModelClass>(context).pmName),
            const SizedBox(height: 5,),
            Text(Provider.of<StateModelClass>(context).stateName),
            const SizedBox(height: 5,),
            Text(Provider.of<StateModelClass>(context).cmName),
          ],
        );
      }
    );
  }
}

class CountryModelClass extends ChangeNotifier{
  String countryName = "India";
  String pmName;

  CountryModelClass(
    {
      required this.pmName
    }
  );

  void changeData(String pmName){
    log("country changedata");
    this.pmName= pmName;
    notifyListeners();
  }
}

class StateModelClass extends ChangeNotifier{
  String stateName;
  String cmName;

  StateModelClass(
    {
      required this.stateName,
      required this.cmName
    }
  );

  void changeData(String stateName,String cmName){
    log("state changedata");
    this.cmName = cmName;
    this.stateName = stateName;
    notifyListeners();
  }
}