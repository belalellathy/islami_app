import 'package:shared_preferences/shared_preferences.dart';

class MostRecentSuras {
  static List<String>savedsuras=[];
  static List<int>MostRecentSurasindex=[];
 static Future<void>loadMostRecentSuras()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    savedsuras=prefs.getStringList("MostRecentSuras")??[];
    MostRecentSurasindex=savedsuras.map((e)=>int.parse(e)).toList();
  }
static Future<void>saveMostRecentSuras()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList("MostRecentSuras", MostRecentSurasindex.map((e) => e.toString()).toList());
  }
}