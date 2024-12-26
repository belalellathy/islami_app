import 'package:flutter/material.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/theme/apptheme.dart';

void main(){
runApp(Run());
}
class Run extends StatelessWidget {
  const Run({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Home",
      routes: {
        "Home":(context)=>Home()
      },
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}