import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=a76cacad2a29458abdc120139221809&q=$city&aqi=no');
    return response.data;

    // final responseData = response.data;
    // if (responseData == null) {
    //   return null;
    // }
    // final country = responseData['location']['country'] as String;
    // final name = responseData['location']['name'] as String;
    // final temperature = (responseData['current']['temp_c'] + 0.0) as double;

    // return WeatherModel(city: name, temperature: temperature, country: country);
  }
}
