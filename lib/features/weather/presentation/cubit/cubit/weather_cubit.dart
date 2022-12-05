import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/features/weather/data/repositories/weather_repository.dart';
import 'package:weather_bloc/features/weather/domain/weather.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final IWeatherRepository weatherRepository;

  WeatherCubit(this.weatherRepository) : super(WeatherState.initial());

  Future<void> getWeathers() async {
    try {
      emit(state.copyWith(status: Status.loading));

      final weathers = await weatherRepository.getWeathers();

      emit(state.copyWith(status: Status.loaded, weathers: weathers));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  void onTap(Weather weather) {
    emit(state.copyWith(selected: weather));
  }
}
