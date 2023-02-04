import 'package:flutter/cupertino.dart';

class WeatherModel {
  const WeatherModel({
    required this.temperature,
    required this.city,
    required this.country,
    required this.icon,
  });

  final double temperature;
  final String city;
  final String country;
  final String icon;

  WeatherModel.fromJson(Map<String, dynamic> json)
      : temperature = json['current']['temp_c'] + 0.0,
        city = json['location']['name'],
        country = json['location']['country'],
        icon = json['current']['condition']['icon'];
}
