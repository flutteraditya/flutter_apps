import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/home_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/getstarted01.png",
            height: 630,
            width: 390,
            //color: Colors.black,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Lets find your Paradise",
            style: GoogleFonts.poppins(
              color: const Color.fromRGBO(0, 0, 0, 1),
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Find your perfect dream space \n with just a few clicks",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(101, 101, 101, 1),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(32, 169, 247, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              fixedSize: const Size(220, 55)
            ),
            
            child: Text(
              "Get Started",
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(255, 255, 255, 1),
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ), 
          ),
        ],
      ),
    );
  }
}