import 'package:flutter/material.dart';
import 'package:islami_app/theme/apptheme.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
            "assets/images/Frame 2.png",
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Welcome to Islami",
            style: TextStyle(
                color: Apptheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Text("We Are Very Excited To Have You In Our Community",
              style: TextStyle(
                  color: Apptheme.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
