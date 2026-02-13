import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/Radio/radio.dart';
import 'package:islami_app/hadeeth/hadeth.dart';
import 'package:islami_app/tabs/Quran/quran.dart';
import 'package:islami_app/tabs/sebha.dart';
import 'package:islami_app/tabs/time/time.dart';
import 'package:islami_app/theme/apptheme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectindex = 0;
  List<Widget> tabs = [
    const Quran(),
    const Hadeth(),
    const Sebha(),
    const radio(),
    const Time()
  ];
  List<String> images = [
    "assets/images/taj-mahal-agra-india.jpg",
    "assets/images/Background.png",
    "assets/images/Background.png",
    "assets/images/silhouette-woman-reading-quran.jpg",
    "assets/images/Background.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(images[selectindex]), fit: BoxFit.fill)),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/Logo (1).png",
                height: MediaQuery.sizeOf(context).height * 0.18,
              ),
              Expanded(child: tabs[selectindex]),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selectindex,
            onTap: (index) {
              selectindex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/icons/Vector.svg"),
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 12),
                      decoration: BoxDecoration(
                          color: Apptheme.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(66)),
                      child: SvgPicture.asset("assets/icons/Vector.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn))),
                  label: "quran"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      "assets/icons/book-album-svgrepo-com 1.svg"),
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 12),
                      decoration: BoxDecoration(
                          color: Apptheme.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(66)),
                      child: SvgPicture.asset(
                          "assets/icons/book-album-svgrepo-com 1.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn))),
                  label: "hadeth"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/necklace-islam-svgrepo-com 1.svg",
                  ),
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 12),
                      decoration: BoxDecoration(
                          color: Apptheme.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(66)),
                      child: SvgPicture.asset(
                          "assets/icons/necklace-islam-svgrepo-com 1.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn))),
                  label: "sebha"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/radio-svgrepo-com 1.svg",
                  ),
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 12),
                      decoration: BoxDecoration(
                          color: Apptheme.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(66)),
                      child: SvgPicture.asset(
                          "assets/icons/radio-svgrepo-com 1.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn))),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/Vector-1.svg",
                  ),
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 12),
                      decoration: BoxDecoration(
                          color: Apptheme.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(66)),
                      child: SvgPicture.asset("assets/icons/Vector-1.svg",
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn))),
                  label: "Time")
            ]),
      ),
    );
  }
}
