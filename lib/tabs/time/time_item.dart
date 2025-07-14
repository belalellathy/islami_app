import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islami_app/API_model/prayerresponsemodel/prayerresponsemodel.dart';

class TimeItem extends StatelessWidget {
   TimeItem({super.key,required this.data, required,required this.index});
Prayerresponsemodel data;
List<String>name=[
  "Fajr" , 
  "Dhuhr",  
  "Asr",  
  "Maghrib" ,
   "Isha"];
   int index;
String formatTo12Hour(String time) {
  DateTime parsed = DateFormat("HH:mm").parse(time);
  return DateFormat("hh:mm a").format(parsed);
}


  @override
  Widget build(BuildContext context) {
  List<String>time=[
    
    data.data!.timings!.fajr!,
  data.data!.timings!.dhuhr!,
  data.data!.timings!.asr!,
  data.data!.timings!.maghrib!,
  data.data!.timings!.isha!];
  List<String> formattedTimes = time.map((t) => formatTo12Hour(t)).toList();

    return Container(
     width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(colors: [
          Color(0xFF202020),
          Color(0xFFB19768)

        ])
      ),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Text(name[index].toUpperCase(),style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700
          ),),
          SizedBox(height: 10,),
          Text(formattedTimes[index],style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w700
          )),
         
        ],
      ),
    ) ;
  }
}