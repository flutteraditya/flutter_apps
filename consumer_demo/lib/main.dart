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
        Provider(
          create: (context) {
            return TeamModelClass(
              teamName: "Mumbai Indians",
              teamOwner: "Ambani",
              
            );
          },
        ),
        ChangeNotifierProvider(
          create: (context){
            return TeamInfoModelClass(
              titles: 5,
              captionName: "rohit"
            );
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
    return Column(
      children: [
        const SizedBox(width: double.infinity,),
        const ProviderData(),
        const SizedBox(height: 10,),
        const ChangeNotifierProviderData(),
        const SizedBox(height: 10,),
        Text("teamName: ${Provider.of<TeamModelClass>(context).teamName}"),
        const SizedBox(height: 10,),
        Text("teamOwer: ${Provider.of<TeamModelClass>(context).teamOwner}"),
        const SizedBox(height: 10,),
        Consumer(
          builder:(context,provider,child){
            log("in consumer1");
            return Text("titles: ${Provider.of<TeamInfoModelClass>(context).titles}");
          }
        ),
        const SizedBox(height: 10,),
        Consumer(
          builder:(context,provider,child){
            log("in consumer2");
            return Text("captionName: ${Provider.of<TeamInfoModelClass>(context).captionName}");
          }
        ),
        const SizedBox(height: 10,),
        ElevatedButton(
          onPressed: (){
            Provider.of<TeamInfoModelClass>(listen: false,context).changeData(6,"rohit");
          },
          child: const Text(
            "change",
          ),
        ),
      ],
    );
  }
}

class ProviderData extends StatelessWidget {
  const ProviderData({super.key});

  @override
  Widget build(BuildContext context) {
    log("in providerdata build");
    return Column(
      children: [
        Text("teamName: ${Provider.of<TeamModelClass>(context).teamName}"),
        const SizedBox(height: 10,),
        Text("teamOwer: ${Provider.of<TeamModelClass>(context).teamOwner}"),
      ],
    );
  }
}

class ChangeNotifierProviderData extends StatelessWidget {
  const ChangeNotifierProviderData({super.key});

  @override
  Widget build(BuildContext context) {
    log("in changenotifierproviderdata build");
    return Column(
      children: [
        Consumer(
          builder:(context,provider,child){
            log("in consumer3");
            return Text("titles: ${Provider.of<TeamInfoModelClass>(context).titles}");
          }
        ),
        const SizedBox(height: 10,),
        Consumer(
          builder:(context,provider,child){
            log("in consumer4");
            return Text("captionName: ${Provider.of<TeamInfoModelClass>(context).captionName}");
          }
        ),
      ],
    );
  }
}

class TeamModelClass{
  String teamName;
  String teamOwner;

  TeamModelClass(
    {
      required this.teamName,
      required this.teamOwner,
    }
  );
}

class TeamInfoModelClass extends ChangeNotifier{

  int titles;
  String captionName;

  TeamInfoModelClass(
    {
      required this.titles,
      required this.captionName
    }
  );

  void changeData(int titles,String captionName){
    this.titles = titles;
    this.captionName = captionName;
    notifyListeners();
  }
}