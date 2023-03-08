import 'package:weather/weather/domain/enities/waether.dart';

import '../repository/weather_repository.dart';

class GetWeatherByCountryName {
  final WeatherRepository weatherRepository;

  GetWeatherByCountryName(this.weatherRepository);

  Future<Weather> execute(String cityName) async {
    return await weatherRepository.getWeatherByCity(cityName);
  }
}
