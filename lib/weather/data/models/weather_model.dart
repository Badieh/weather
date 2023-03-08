import 'package:weather/weather/domain/enities/waether.dart';

// https://api.openweathermap.org/data/2.5/weather?q=London,uk&callback=test&appid=08b7f9b3a1f441401e738047b184abce
class WeatherModel extends Weather {
  WeatherModel(
      super.id, super.cityName, super.main, super.description, super.pressure);

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        json['id'],
        json['name'],
        json['weather'][1]['main'],
        json['weather'][1]['description'],
        json['main']['pressure'],
      );
}
