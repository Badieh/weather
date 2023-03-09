import 'package:weather/weather/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:weather/weather/domain/enities/waether.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class Repository implements BaseWeatherRepository {
  final BaseRemoteDataSource _baseRemoteDataSource;

  Repository(this._baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCity(String cityName) async {
    return (await _baseRemoteDataSource.getWeatherByCityName(cityName))!;
  }
}
