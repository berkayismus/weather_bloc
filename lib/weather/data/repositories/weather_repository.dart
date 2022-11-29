import 'package:weather_bloc/weather/domain/weather.dart';

abstract class IWeatherRepository {
  Future<List<Weather>> getWeathers();
}

class LocalWeatherRepository implements IWeatherRepository {
  final _weathers = [
    Weather(name: 'Istanbul', degree: 10.0),
    Weather(name: 'Agri', degree: -2.0),
    Weather(name: 'Silivri', degree: -5.0),
  ];

  @override
  Future<List<Weather>> getWeathers() async {
    await Future.delayed(const Duration(seconds: 3));
    return _weathers;
  }
}

class RemoteWeatherRepository implements IWeatherRepository {
  @override
  Future<List<Weather>> getWeathers() {
    // TODO: implement getWeathers
    throw UnimplementedError();
  }
}
