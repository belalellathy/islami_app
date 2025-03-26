import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/tabs/Quran/sura_detail.dart';
import 'package:islami_app/theme/apptheme.dart';

void main(){
runApp(const Run());
}
class Run extends StatelessWidget {
  const Run({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Home",
      routes: {
        "Home":(context)=>const Home(),
        "Suradetail":(context)=>SuraDetail()
      },
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}