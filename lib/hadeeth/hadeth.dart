import 'package:flutter/material.dart';
import 'package:islami_app/hadeeth/hadeth_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Hadeth extends StatelessWidget {
  const Hadeth({super.key});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12,bottom: 20),
      child: CarouselSlider.builder(itemBuilder: (_, index, ___) => HadethItem(no: index,) , options:CarouselOptions(enlargeFactor: 0.2,
      enlargeCenterPage: true,
      initialPage: 0,
      
      height: MediaQuery.of(context).size.height), itemCount: 50,),
    );
  }
}