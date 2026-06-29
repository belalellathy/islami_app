import 'package:flutter/material.dart';
import 'package:islami_app/tabs/Quran/most_recent_item.dart';
import 'package:islami_app/tabs/Quran/most_recent_suras.dart';
import 'package:islami_app/theme/apptheme.dart';

class MostRecent extends StatefulWidget {
  const MostRecent(
      {super.key,
      required this.englishQuranSurahs,
      required this.arabicQuranSurahs,
      required this.ayat});
  final List<String> englishQuranSurahs;
  final List<String> arabicQuranSurahs;
  final List<String> ayat;

  @override
  State<MostRecent> createState() => _MostRecentState();
}

class _MostRecentState extends State<MostRecent> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MostRecentSuras.mostRecentSurasIndex.isNotEmpty,
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
                    .mostRecentSurasIndex.reversed
                    .toList()[index]],
                englishQuranSurahs: widget.englishQuranSurahs[MostRecentSuras
                    .mostRecentSurasIndex.reversed
                    .toList()[index]],
                ayat: widget.ayat[MostRecentSuras.mostRecentSurasIndex.reversed
                    .toList()[index]],
                index: MostRecentSuras.mostRecentSurasIndex.reversed
                    .toList()[index],
              ),
              itemCount: MostRecentSuras.mostRecentSurasIndex.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => const SizedBox(width: 10),
            ),
          )
        ],
      ),
    );
  }
}
