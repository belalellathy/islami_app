import 'package:flutter/material.dart';
import 'package:islami_app/Radio/item.dart';
import 'package:islami_app/Radio/radio_tab.dart';
import 'package:islami_app/theme/apptheme.dart';
import 'package:toggle_switch/toggle_switch.dart';

class radio extends StatefulWidget {
  const radio({super.key});



  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  List<items>names=[
  items(name:"Radio Ibrahim Al-Akdar" ,imagename: "assets/images/Mosque-02.png"),
  items(name:"Radio Al-Qaria Yassen",imagename: "assets/images/Mosque-02.png" ),
  items(name:"Radio Ahmed Al-trabulsi",imagename: "assets/images/Mosque-02.png" ),

];
  List<items>Items=[
  items(name:"Ibrahim Al-Akdar" ,imagename: "assets/images/Mosque-02.png"),
  items(name:"Akram Alalaqmi",imagename: "assets/images/Mosque-02.png" ),
  items(name:"Majed Al-Enezi",imagename: "assets/images/Mosque-02.png" ),
  items(name:"Malik shaibat Alhamed",imagename: "assets/images/Mosque-02.png" ),

];
  int ?selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ToggleSwitch(
          minWidth: MediaQuery.sizeOf(context).width*0.9,
          initialLabelIndex: selectedindex,
          totalSwitches: 2,
          labels: const ["Radio","Reciters"],
          activeBgColor: const [Apptheme.primary],
          inactiveBgColor: Apptheme.black.withOpacity(0.7),
          fontSize:16 ,
          inactiveFgColor: Colors.white,
          activeFgColor: Colors.black,
          onToggle:(index){
          setState(() {
              selectedindex=index;
            });
          
          } ,
        ),
        const SizedBox(height: 20,),
        //Expanded(child:selectedindex==0? RadioTab(names[0]):Text("2",style: TextStyle(color: Colors.white),))
        Expanded(
         
          child: selectedindex==0?
        ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 10,),
        itemCount: names.length,
          itemBuilder: (context,index){
            return RadioTab(names[index]);
          },
        ):  ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 10,),
        itemCount: names.length,
          itemBuilder: (context,index){
            return RadioTab(Items[index]);
          },
        )
        
        )
        

      ],
    );
  }
}