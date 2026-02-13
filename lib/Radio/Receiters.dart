import 'package:flutter/material.dart';
import 'package:islami_app/Radio/ReceitersList.dart';
import 'package:islami_app/theme/apptheme.dart';

class Receiters extends StatelessWidget {
  String name;
  int index;
   Receiters({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
        decoration: BoxDecoration(
            color: Apptheme.primary, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                  ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/Mosque-02.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.pushNamed(
                          context, "receiterslist",
                          arguments:{'index': index, 'name': name}
                        );
                      } ,
                      child: const Text("Tap to Listen",style: TextStyle(

                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w800
                        ),),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
        

      ],
    );
  }
}