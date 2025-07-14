import 'package:flutter/material.dart';
import 'package:islami_app/tabs/Quran/most_recent_item.dart';
import 'package:islami_app/tabs/Quran/most_recent_suras.dart';
import 'package:islami_app/theme/apptheme.dart';

class MostRecent extends StatefulWidget {
  MostRecent(
      {super.key,
      required this.englishQuranSurahs,
      required this.arabicQuranSurahs,
      required this.ayat});
  List<String> englishQuranSurahs = [];
  List<String> arabicQuranSurahs = [];
  List<String> ayat = [];

  @override
  State<MostRecent> createState() => _MostRecentState();
}

class _MostRecentState extends State<MostRecent> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MostRecentSuras.MostRecentSurasindex.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Most Recently ",
            style: TextStyle(color: Apptheme.white, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.21,
            child: ListView.separated(
              itemBuilder: (_, index) => MostRecentItem(
                arabicQuranSurahs: widget.arabicQuranSurahs[MostRecentSuras
                    .MostRecentSurasindex.reversed
                    .toList()[index]],
                englishQuranSurahs: widget.englishQuranSurahs[MostRecentSuras
                    .MostRecentSurasindex.reversed
                    .toList()[index]],
                ayat: widget.ayat[MostRecentSuras.MostRecentSurasindex.reversed
                    .toList()[index]],
                index: MostRecentSuras.MostRecentSurasindex.reversed
                    .toList()[index],
              ),
              itemCount: MostRecentSuras.MostRecentSurasindex.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => const SizedBox(width: 10),
            ),
          )
        ],
      ),
    );
  }
}
