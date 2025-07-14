import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:islami_app/API_model/prayerresponsemodel/prayerresponsemodel.dart';
import 'package:islami_app/API_model/prayerresponsemodel/timings.dart';

class APIManager {
  static Future<Prayerresponsemodel> getpraytime() async {
    
      var date = DateFormat("dd-MM-yyyy").format(DateTime.now());

      Uri uri = Uri.parse(
          "https://api.aladhan.com/v1/timingsByCity/$date?city=cairo&country=egypt");
      var response = await http.get(uri);
      Map<String,dynamic> jsondecode = jsonDecode(response.body);
      return Prayerresponsemodel.fromJson(jsondecode);
    
  }
}
