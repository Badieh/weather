import 'package:weather/weather/domain/enities/waether.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCity(String cityName);

}
