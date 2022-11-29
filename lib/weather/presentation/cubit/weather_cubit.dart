import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_bloc/weather/data/repositories/weather_repository.dart';
import 'package:weather_bloc/weather/domain/weather.dart';

part 'weather_state.dart';

// * [cubit] veya [bloc] aslında birer controller'dır
// * controller'lar [state] i değiştirmek, ve [view] a yansıtmaktan sorumludur
// ! business logic içermemelidir
// * business logic, application klasörü içerisindeki service class'ında bulunmalıdır
// * [controller] business logic yönetmesi gereken durumlarda, service class'ındaki metodları çağırmalıdır
class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherRepository) : super(WeatherState.initial());

  final IWeatherRepository weatherRepository;

  Future<void> getWeathers() async {
    try {
      emit(state.copyWith(status: Status.loading));

      final weathers = await weatherRepository.getWeathers();

      emit(state.copyWith(
        weathers: weathers,
        status: Status.loaded,
      ));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  void onTap(Weather weather) {
    emit(state.copyWith(selected: weather));
  }
}
