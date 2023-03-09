import 'package:weather/weather/domain/enities/waether.dart';

import '../repository/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository weatherRepository;

  GetWeatherByCountryName(this.weatherRepository);

  Future<Weather> execute(String cityName) async {
    return await weatherRepository.getWeatherByCity(cityName);
  }
}
