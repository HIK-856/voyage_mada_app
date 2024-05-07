import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';

class Geolocalisation {
  double nombreDistance = 0;

  // Déclaration du callback pour notifier les changements de distance
  late void Function(double) onDistanceChanged;
  void permission() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // L'utilisateur a refusé l'autorisation, gérer en conséquence
    } else if (permission == LocationPermission.deniedForever) {
      // L'utilisateur a refusé l'autorisation de manière permanente, gérer en conséquence
    } else {
      distance();
      // L'utilisateur a accordé l'autorisation, vous pouvez maintenant utiliser la géolocalisation
    }
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
    nombreDistance = distanceInKm;
    // Notifier les écouteurs du changement de distance
    onDistanceChanged(nombreDistance);
  }
}
