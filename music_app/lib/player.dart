import 'package:flutter/material.dart';

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
                const Text(
                  "Alone in the Abyss",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(230, 154, 21, 1),
                    height: 0
                  ),
                ),
                // const Text(
                //   "Youlakou",
                //   style: TextStyle(
                //     fontSize: 13,
                //     fontWeight: FontWeight.w600,
                //     color: Color.fromRGBO(255, 255, 255, 1)
                //   ),
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    const Spacer(),
                    const Text(
                      "Youlakou",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1)
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
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dynamic Warmup | ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                ),
                Text(
                  "4 min",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}