// https://api.openweathermap.org/data/2.5/
// weather?q=egypt&
// appid=08b7f9b3a1f441401e738047b184abce

class Weather {
  final int id;
  final String cityName;
  final String main;
  final String description;
  final int pressure;

  Weather(this.id, this.cityName, this.main, this.description, this.pressure);
}
