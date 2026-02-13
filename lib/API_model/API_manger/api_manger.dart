import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:islami_app/API_model/prayerresponsemodel/prayerresponsemodel.dart';
import 'package:islami_app/API_model/radioresponsemodel/radioresponsemodel.dart';
import 'package:islami_app/API_model/receitersresponsemodel/receitersresponsemodel.dart';

class APIManager {
  static Future<Prayerresponsemodel> getpraytime(
      {required String city,
      required String country,
      required String street}) async {
    var date = DateFormat("dd-MM-yyyy").format(DateTime.now());

    Uri uri = Uri.parse(
        "https://api.aladhan.com/v1/timingsByCity/$date?city=$city,$street&country=$country");
    var response = await http.get(uri);
    Map<String, dynamic> jsondecode = jsonDecode(response.body);
    return Prayerresponsemodel.fromJson(jsondecode);
  }

  static Future<Radioresponsemodel> getradio() async {
    Uri uri = Uri.parse("https://mp3quran.net/api/v3/radios?language=ar");
    var response = await http.get(uri);
    Map<String, dynamic> jsondecode = jsonDecode(response.body);
    return Radioresponsemodel.fromJson(jsondecode);
  }
  static Future<Receitersresponsemodel> getreciters() async {
    Uri uri = Uri.parse("https://www.mp3quran.net/api/v3/reciters?language=ar");
    var response = await http.get(uri);
    Map<String, dynamic> jsondecode = jsonDecode(response.body);
    return Receitersresponsemodel.fromJson(jsondecode);
}
}
