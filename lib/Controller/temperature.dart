import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey = 'YOUR_API_KEY';
  final String baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  Future<double> fetchTemperature(double latitude, double longitude) async {
    final url = '$baseUrl?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric';
    
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final temperature = jsonResponse['main']['temp'];
      return temperature.toDouble();
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
