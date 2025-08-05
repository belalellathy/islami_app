import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/API_model/API_manger/api_manger.dart';
import 'package:islami_app/API_model/prayerresponsemodel/prayerresponsemodel.dart';
import 'package:islami_app/providers/LocationProvide.dart';
import 'package:islami_app/tabs/time/time_item.dart';
import 'package:provider/provider.dart';



class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  
  @override
  Widget build(BuildContext context) {
    Locationprovider locationprovider = Provider.of<Locationprovider>(context, listen: false);
    locationprovider.getlocation();
    locationprovider.getlocationname();
    print("city ${locationprovider.city}");
    print("country ${locationprovider.country}");
    print("location  ${locationprovider.locationData?.latitude} ${locationprovider.locationData?.longitude}");
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height*0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xff856B3F),
                image: DecorationImage(image: AssetImage("assets/images/praytime.png"),fit: BoxFit.fill)
              ),
              child: FutureBuilder<Prayerresponsemodel>(future: APIManager.getpraytime(city: locationprovider.city??"cairo", country: locationprovider.country??"egypt"), builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator(color: Colors.white,),);

                }else if(snapshot.hasError){
                  
                  return Column(
                    children: [
                      Text("Error occured${snapshot.error}",style: TextStyle(color:Colors.red ),),
                      ElevatedButton(onPressed: (){APIManager.getpraytime(city: locationprovider.city??"cairo", country: locationprovider.country??"egypt");
                      setState(() {
                        
                      });}, child: Text("Try Again"))
                  
                    ],
                  );
                }else{Prayerresponsemodel data=snapshot.data!;
                Map<String,dynamic>prayertimes = data.data!.timings!.toJson();
                print(prayertimes);
                String mo = data.data!.date!.hijri!.month!.en!;
                String editedmo=mo.substring(0,3);
                
               
                return Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                    
                     Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          AutoSizeText("${data.data!.date!.gregorian!.day!}-${data.data!.date!.gregorian!.month!.en!}\n${data.data!.date!.gregorian!.year!}",style:const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700
                          ),),
                          Column(
                            children: [
                            const  AutoSizeText("pray Time",style:  TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),),
                              AutoSizeText(data.data!.date!.gregorian!.weekday!.en!,style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                          ),)
                            ],
                          ),
                           AutoSizeText("${data.data!.date!.hijri!.day!}-${editedmo}\n${data.data!.date!.hijri!.year!}",style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700
                          ),),
                        ],
                      )),
                      Positioned(
                        top: 70,
                        left: 0,
                        right: 0,
                        bottom: 30,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Center(child:CarouselSlider.builder(
                            options: CarouselOptions(enlargeFactor: 0.3,
                                      enlargeCenterPage: true,
                                      initialPage: 0,),
                            itemCount: 5,
                            itemBuilder: (_, index, __) {
                              return TimeItem(data: data,index: index,);
                              
                            },
                           
                            ) ,),
                        )
                          )

                    ],
                  ),
                );}
              }),
              

            )
        
            
          ],
        ),
      ),
    );
  }
}