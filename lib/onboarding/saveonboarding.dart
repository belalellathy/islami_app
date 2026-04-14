import 'package:shared_preferences/shared_preferences.dart';

class Saveonboarding {
static bool isviewed = false;
static Future<void> saveisviewed() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("isviewed", isviewed);
}
static Future<void> loadisviewed() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getBool("isviewed") ?? false;
}

}