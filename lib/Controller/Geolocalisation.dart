import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';

class Geolocalisation extends StatefulWidget {
  const Geolocalisation({super.key});

  @override
  State<Geolocalisation> createState() => _GeolocalisationState();
}

void distance() async {
  // Obtenir la position actuelle
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  double latitude = position.latitude;
  double longitude = position.longitude;

  // Coordonnées géographiques du pays (par exemple, la France)
  double countryLatitude = 46.603354;
  double countryLongitude = 1.888334;

  // Calculer la distance entre la position actuelle et le pays
  double distanceInMeters = Geolocator.distanceBetween(
      latitude, longitude, countryLatitude, countryLongitude);

  // Convertir la distance en kilomètres
  double distanceInKm = distanceInMeters / 1000;

  print(
      'La distance entre votre position actuelle et le pays est : $distanceInKm km');
}

class _GeolocalisationState extends State<Geolocalisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconButton(
          onPressed: () {
            distance();
          },
          icon: const Icon(Icons.place)),
    );
  }
}
