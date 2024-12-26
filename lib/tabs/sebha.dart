import 'package:flutter/material.dart';
class Sebha extends StatefulWidget {
  
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
List<String>azkar=[
  "سبحان الله",
  "الحمدلله",
  "الله اكبر"

];
void function(){
  counter++;
  if(counter==33){
    counter=0;
    index+=1;
  }
}
int counter=0;
int index=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      
      Expanded(child: Image.asset("assets/images/سَبِّحِ اسْمَ رَبِّكَ الأعلى.png")),
      Expanded(
      flex: 5,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          width: MediaQuery.sizeOf(context).width*0.9,
          height: MediaQuery.sizeOf(context).height*0.5,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/image.png")),
        
          ),
          child: GestureDetector(
            onTap: (){
            function();
            if(index>2){
              index=0;
            }
            setState(() {
                
              });
            },
            child: Align(
              alignment: Alignment.center,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${azkar[index]}",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                color: Colors.white
              ),),
              SizedBox(height: 10,),
                  Text("$counter",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Colors.white
              ),),
                ],
              )
            ),
          ),
        ),
      )

    ],);
  }
}