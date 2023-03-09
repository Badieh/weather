
import 'package:dio/dio.dart';
import 'package:weather/core/utils/constance.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try {
      final response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.apiKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
