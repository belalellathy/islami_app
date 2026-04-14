import 'package:flutter/material.dart';
import 'package:islami_app/onboarding/page1.dart';
import 'package:islami_app/onboarding/page2.dart';
import 'package:islami_app/onboarding/page3.dart';
import 'package:islami_app/onboarding/page4.dart';
import 'package:islami_app/onboarding/page5.dart';
import 'package:islami_app/onboarding/saveonboarding.dart';
import 'package:islami_app/theme/apptheme.dart';

class Pageview extends StatefulWidget {
  Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> with TickerProviderStateMixin {
  PageController pageController = PageController();

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 5, vsync: this);

    _tabController.addListener(() {
      setState(() {});
      if (_tabController.indexIsChanging) {
        pageController.animateToPage(_tabController.index,
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: pageController,
          onPageChanged: (index) {
            _tabController.animateTo(index);
          },
          children: const [Page1(), Page2(), Page3(), Page4(), Page5()],
        ),
        Positioned(
          bottom: 30,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _tabController.index > 0
                  ? TextButton(
                      onPressed: () {
                        _tabController.animateTo(_tabController.index - 1);
                      },
                      child: const Text(
                        "Back",
                        style: TextStyle(color: Apptheme.primary, fontSize: 16),
                      ),
                    )
                  : const SizedBox(width: 64),
              TabPageSelector(
                controller: _tabController,
                color: Colors.grey,
                selectedColor: Apptheme.primary,
              ),
              TextButton(
                onPressed: () {
                  if (_tabController.index == 4) {
                    Saveonboarding.isviewed = true;
                    Saveonboarding.saveisviewed();
                    Navigator.of(context).pushReplacementNamed("Home");
                  } else {
                    _tabController.animateTo(_tabController.index + 1);
                  }
                },
                child: Text(
                  _tabController.index == 4 ? "Finish" : "Next",
                  style: const TextStyle(color: Apptheme.primary, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
