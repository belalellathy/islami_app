import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:location/location.dart';

class Locationprovider with ChangeNotifier {
  Location location = Location();
  LocationData? locationData;
  String? city;
  String? country;
  String? street;

  Future<bool> checklocationenabled() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return false;
      }
    }
    return true;
  }

  Future<void> getlocation() async {
    bool isEnabled = await checklocationenabled();
    if (isEnabled) {
      locationData = await location.getLocation();
      getlocationname();
    }
  }

  Future<void> getlocationname() async {
    locationData = await location.getLocation();
    List<geocoding.Placemark> placemarks =
        await geocoding.placemarkFromCoordinates(
      locationData!.latitude ?? 30.0352117,
      locationData!.longitude ?? 30.96662,
    );
    if (placemarks.isNotEmpty) {
      geocoding.Placemark place = placemarks.first;
      city = place.subAdministrativeArea ?? '';
      country = place.country ?? '';
      street = place.street ?? " ";
      print(street);
    }
    print(city);
  }
}
