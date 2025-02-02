import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/gallery.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity,height: 0,),
            Container(
              width: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/homeimg.png"),
                  alignment: Alignment.topCenter,
                  //fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: double.infinity,height: 420,),
                  Container(
                    margin: const EdgeInsets.only(left: 35),
                    height: 130,
                    width: 315,
                    child: Text(
                      "Dancing between \nThe shadows \nOf rhythm",
                      style: GoogleFonts.inter(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 1.1
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    //margin: const EdgeInsets.only(left: 70),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => const GalleryPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(260, 45),
                        backgroundColor: const Color.fromRGBO(255, 46, 0, 1),
                        foregroundColor: const Color.fromRGBO(19, 19, 19, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Get started",
                        style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    //margin: const EdgeInsets.only(left: 70),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context, 
                        //   MaterialPageRoute(
                        //     builder: (context) => const GalleryPage(),
                        //   ),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(260, 45),
                        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
                        foregroundColor: const Color.fromRGBO(255, 46, 0, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        "Continue with Email",
                        style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 35,
                    width: 230,
                    alignment: Alignment.center,
                    child: Text(
                      "by continuing you agree to terms \nof services and Privacy policy",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        height: 1.2,
                        color: const Color.fromRGBO(203, 200, 200, 1)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}