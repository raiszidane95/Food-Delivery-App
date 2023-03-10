import 'package:flutter/material.dart';

import '../../main_screen.dart';
import '../../utilities/color_schema.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepOrange800,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 40),
            child: Expanded(
              child: CircleAvatar(
                // backgroundImage: AssetImage('assets/image/logormv.png'),
                // backgroundColor: Colors.white,
                // radius: 40,
                backgroundColor: Colors.white,
                radius: 40,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/asset2.png'),
                  backgroundColor: Colors.white,
                  radius: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: const Text(
              'Food For Everyone',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/image/face1.png',
                      scale: 1.05,
                    )),
                Image.asset('assets/image/face2.png', scale: 1.2),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return MainScreen();
                    },
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: deepOrange800),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
