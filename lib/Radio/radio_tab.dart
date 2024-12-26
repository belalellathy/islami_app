import 'package:flutter/material.dart';
import 'package:islami_app/Radio/item.dart';
import 'package:islami_app/theme/apptheme.dart';

class RadioTab extends StatelessWidget {
items item;
RadioTab(this.item);
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
            decoration: BoxDecoration(
               color: Apptheme.primary,
              borderRadius: BorderRadius.circular(20)
            ),
      
        child: Container(
          child: Column(
            
            children: [
              Text("${item.name}",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20
          
              ),),
              Stack(
                alignment: Alignment.center,
                children: [
                Image.asset("${item.imagename}"),
              
                
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded),iconSize:44 ,color: Colors.black,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_rounded),iconSize:30 ,color: Colors.black,),
                  ],
                )
              ],)
              
              
            ],
          ),
        ),
      ),
    );
  }
}