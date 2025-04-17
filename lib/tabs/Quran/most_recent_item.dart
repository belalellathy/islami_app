import 'package:flutter/material.dart';
import 'package:islami_app/theme/apptheme.dart';

class MostRecentItem extends StatelessWidget {
  MostRecentItem({super.key, required this.englishQuranSurahs,required this.arabicQuranSurahs,required this.ayat,required this.index});
  String englishQuranSurahs,arabicQuranSurahs,ayat;
int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      
        Navigator.of(context).pushNamed("Suradetail",arguments: index);
        
      },
      child: Container(
        width: MediaQuery.of(context).size.width*0.82,
        decoration: BoxDecoration(
          color: Apptheme.primary,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
         // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text(englishQuranSurahs,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                Text(arabicQuranSurahs,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w700)),
                Text("$ayat verses",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700)),
              ]),
            ),
            Image.asset("assets/images/Rectangle 124.png",fit: BoxFit.fill,)
          ]),
      ),
    );
  }
}