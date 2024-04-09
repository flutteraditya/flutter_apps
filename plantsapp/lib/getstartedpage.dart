import 'package:flutter/material.dart';
import 'package:plantsapp/loginpage.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 44,),
              // SvgPicture.asset(
              //   "assets/svg/gsimg.svg",
              //   height: 464,
              //   width: 360,
              // ),
              Image.asset(
                "assets/png/image.png",
                height: 464,
                width: 360,
              ),
              const SizedBox(
                height: 88,
                width: 247,
                child: Text(
                  "Enjoy your life with Plants",
                  style: TextStyle(
                    fontSize: 34.22,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const LogInPage(),
                    ),
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(320, 50),
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                    left: 93,
                    right: 92
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor: const Color.fromRGBO(62, 102, 24, 1)
                ),
                child: const Text(
                  "Get Started >",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}