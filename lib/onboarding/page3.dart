import 'package:flutter/material.dart';
import 'package:islami_app/theme/apptheme.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF202020),
      body: Column(
        children: [
          Center(
              child: Image.asset(
            "assets/images/Logo (1).png",
            height: MediaQuery.sizeOf(context).height * 0.28,
          )),
          Image.asset(
            "assets/images/HadithCardBackGroundWhite.png",
            color: Apptheme.primary,
            height: MediaQuery.sizeOf(context).height * 0.55,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Reading the Quran",
            style: TextStyle(
                color: Apptheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Read, and your Lord is the Most Generous",
            style: TextStyle(
                color: Apptheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
