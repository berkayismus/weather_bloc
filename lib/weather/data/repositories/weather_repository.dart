import 'package:weather_bloc/weather/domain/weather.dart';

abstract class IWeatherRepository {
  Future<List<Weather>> getWeathers();
}

class WeatherRepository implements IWeatherRepository {
  final _weathers = [
    Weather(name: 'Silivri', degree: 10.0),
    Weather(name: 'Londra', degree: 5.0),
    Weather(name: 'Agri', degree: -5.0),
  ];

  @override
  Future<List<Weather>> getWeathers() async {
    await Future.delayed(const Duration(seconds: 3));
    return _weathers;
  }
}
