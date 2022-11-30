import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_bloc/weather/data/repositories/weather_repository.dart';
import 'package:weather_bloc/weather/domain/weather.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherRepository) : super(const WeatherState.loading());

  final IWeatherRepository weatherRepository;

  Future<void> getWeathers() async {
    try {
      emit(const WeatherState.loading());

      final weathers = await weatherRepository.getWeathers();

      emit(WeatherState.data(weathers: weathers));
    } catch (e) {
      emit(const WeatherState.error(err: 'Bir hata meydana geldi'));
    }
  }

  void onTap(Weather weather) {
    emit(WeatherState.data(selected: weather));
  }
}
