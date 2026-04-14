import 'package:flutter/material.dart';
import 'package:islami_app/theme/apptheme.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: Column(
        children: [
          Center(
              child: Image.asset(
            "assets/images/Logo (1).png",
            height: MediaQuery.sizeOf(context).height * 0.30,
          )),
          Image.asset(
            "assets/images/imageFrame 3.png",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Holy Quran Radio",
            style: TextStyle(
                color: Apptheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "You can listen to the Holy Quran Radio\nthrough the application for free and easily",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Apptheme.primary,
                fontSize: 19,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
