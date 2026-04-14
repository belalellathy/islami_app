import 'package:flutter/material.dart';
import 'package:islami_app/theme/apptheme.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

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
            "assets/images/Frame 3.png",
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Welcome to Islamii App",
            style: TextStyle(
                color: Apptheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
