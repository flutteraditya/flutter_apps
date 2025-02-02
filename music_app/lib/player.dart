import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/bottomnavbar.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Container(
            width: 390,
            height: 540,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/playerimg.png"),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                Text(
                  "Alone in the Abyss",
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(230, 154, 21, 1),
                    height: 0
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    const Spacer(),
                    Text(
                      "Youlakou",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1)
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: (){}, 
                      icon: const Icon(
                        Icons.ios_share_rounded,
                        color: Color.fromRGBO(230, 154, 21, 1),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 390,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dynamic Warmup | ",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1)
                  ),
                ),
                Text(
                  "4 min",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1)
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 390,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            margin: const EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
            child: const ProgressBar(
              progress: Duration(minutes: 1), 
              total: Duration(minutes: 4),
              barHeight: 6,
              baseBarColor: Color.fromRGBO(217, 217, 217, 0.19),
              progressBarColor: Color.fromRGBO(230, 154, 21, 1),
              thumbRadius: 0,
              thumbCanPaintOutsideBar: false,
              thumbGlowRadius: 0,
              timeLabelLocation: TimeLabelLocation.none,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/onetime.png",
                height: 20,
                width: 20,
              ),
              Image.asset(
                "assets/previous.png",
                height: 25,
                width: 25,
              ),
              Image.asset(
                "assets/play.png",
                height: 50,
                width: 50,
              ),
              Image.asset(
                "assets/next.png",
                height: 25,
                width: 25,
              ),
              Image.asset(
                "assets/volume.png",
                height: 20,
                width: 20,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBarPage(),
    );
  }
}