import 'package:flutter/material.dart';
import 'package:islami_app/Radio/ReceitersList.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/providers/LocationProvide.dart';
import 'package:islami_app/tabs/Quran/most_recent_suras.dart';

import 'package:islami_app/tabs/Quran/sura_detail.dart';
import 'package:islami_app/theme/apptheme.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MostRecentSuras.loadMostRecentSuras();
  runApp(
    ChangeNotifierProvider(
      create: (context) => Locationprovider(),
      child: const Run(),
    ),
  );
}

class Run extends StatelessWidget {
  const Run({super.key});

  @override
  Widget build(BuildContext context) {
    Locationprovider locationprovider =
        Provider.of<Locationprovider>(context, listen: false);
    locationprovider.getlocation();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "Home",
      routes: {
        "Home": (context) => const Home(),
        "Suradetail": (context) => const SuraDetail(),
        "receiterslist": (context) => const Receiterslist(),
      },
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
