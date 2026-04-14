import 'package:flutter/material.dart';
import 'package:islami_app/theme/apptheme.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

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
            "assets/images/Frame 3 copy.png",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Bearish",
            style: TextStyle(
                color: Apptheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Praise the name of your Lord, the Most High",
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
