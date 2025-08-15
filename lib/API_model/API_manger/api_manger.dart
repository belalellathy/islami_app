import 'dart:convert';


import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:islami_app/API_model/prayerresponsemodel/prayerresponsemodel.dart';



class APIManager {
  
  

  static Future<Prayerresponsemodel> getpraytime({required String city, required String country,required String street}) async {

      var date = DateFormat("dd-MM-yyyy").format(DateTime.now());

      Uri uri = Uri.parse(
          "https://api.aladhan.com/v1/timingsByCity/$date?city=$city,$street&country=$country");
      var response = await http.get(uri);
      Map<String,dynamic> jsondecode = jsonDecode(response.body);
      return Prayerresponsemodel.fromJson(jsondecode);
      

  }


}
