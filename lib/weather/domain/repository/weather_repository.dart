import 'package:weather/weather/domain/enities/waether.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherByCity(String cityName);

}
