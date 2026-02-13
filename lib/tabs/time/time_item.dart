import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islami_app/API_model/prayerresponsemodel/prayerresponsemodel.dart';

class TimeItem extends StatelessWidget {
  TimeItem({super.key, required this.data, required, required this.index});
  final Prayerresponsemodel data;
  final List<String> name = ["Fajr", "Dhuhr", "Asr", "Maghrib", "Isha"];
  final int index;

  String formatTo12Hour(String time) {
    DateTime parsed = DateFormat("HH:mm").parse(time);
    return DateFormat("hh:mm a").format(parsed);
  }

  @override
  Widget build(BuildContext context) {
    List<String> time = [
      data.data!.timings!.fajr!,
      data.data!.timings!.dhuhr!,
      data.data!.timings!.asr!,
      data.data!.timings!.maghrib!,
      data.data!.timings!.isha!
    ];
    List<String> formattedTimes = time.map((t) => formatTo12Hour(t)).toList();

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
              colors: [Color(0xFF202020), Color(0xFFB19768)])),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            name[index].toUpperCase(),
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(formattedTimes[index],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
