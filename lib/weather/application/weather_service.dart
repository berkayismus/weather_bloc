import 'package:weather_bloc/weather/data/repositories/weather_repository.dart';
import 'package:weather_bloc/weather/domain/weather.dart';

// * [repository] den gelen veri, bir takım işlemlerden geçecekse
// * yani, business logic içeriyorsa
// * ilgili business logic, [controller] katmanında değil [service] katmanında olmalıdır
// * [controller] 'ın görevi, ilgili [service] fonksiyonlarını çağırıp,
// * [view] ı güncellemekten ibarettir

// * [service] katmanı opsiyoneldir.
// * iş mantığı içermeyen durumlarda, kullanılmasına gerek yoktur
// * direkt olarak [repository] ile etkileşime geçer

class WeatherService {
  final IWeatherRepository weatherRepository;

  WeatherService(this.weatherRepository);

  Future<List<Weather>> getWeathers(bool fromCache) {
    if (fromCache) {
      return weatherRepository.getWeathers();
    }
    return weatherRepository.getWeathers();
  }
}
