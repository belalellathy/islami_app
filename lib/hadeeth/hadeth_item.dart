
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeeth/hadeth.dart';
import 'package:islami_app/hadeeth/hadeth_data.dart';
import 'package:islami_app/theme/apptheme.dart';

class HadethItem extends StatefulWidget {
  HadethItem({required this.no});

  @override
  int no;

  @override
  State<HadethItem> createState() => _HadethItemState();
}

class _HadethItemState extends State<HadethItem> {
   HadethData? hadethData;

  Widget build(BuildContext context) {
   if(hadethData==null){loadhadethfile();}
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/HadithCardBackGroundWhite.png",),fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black26,
              BlendMode.srcIn)),
        color: Apptheme.primary,
        borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8,top: 12,bottom: 2),
          child:hadethData==null?Center(child: const CircularProgressIndicator()): Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Mask group (2).png",color: Colors.black,),
                  Expanded(child: Text("${hadethData!.title}",style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),textAlign: TextAlign.center,)),
                  Image.asset("assets/images/Mask group (1).png",color: Colors.black,)
                ],
              ),
              Expanded(child: ListView.separated(itemBuilder: (_, index) => Text("${hadethData!.content[index]  }",textAlign: TextAlign.center,
              ), separatorBuilder: (_, __) => SizedBox(height: 4,), itemCount: hadethData!.content.length)),
              Image.asset("assets/images/Mosque-02.png",fit: BoxFit.fill,)
            ],
          ),
        ),
    );

  }

  Future<void>loadhadethfile()async{
  String hadeeth_content= await rootBundle.loadString("assets/text/Hadeeth/h${widget.no+1}.txt");
  List<String>hadeethline= hadeeth_content.split("\n");
  String title=hadeethline[0];
  hadeethline.removeAt(0);
  List<String>content=hadeethline;
  hadethData= HadethData(title: title, content: content, num: widget.no+1);
setState(() {
  
});
  }
}