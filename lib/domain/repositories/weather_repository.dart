import 'package:simple_weather/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository(this._weatherRemoteDataSource);
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final json = await _weatherRemoteDataSource.getWeatherData(
      city: city,
    );
    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
    // final response = await Dio().get<Map<String, dynamic>>(
    //     'http://api.weatherapi.com/v1/current.json?key=a76cacad2a29458abdc120139221809&q=$city&aqi=no');

        // final country = responseData['location']['country'] as String;
    // final name = responseData['location']['name'] as String;
    // final temperature = (responseData['current']['temp_c'] + 0.0) as double;

    // return WeatherModel(city: name, temperature: temperature, country: country);