import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_bloc/weather/data/repositories/weather_repository.dart';
import 'package:weather_bloc/weather/domain/weather.dart';
import 'package:weather_bloc/weather/presentation/cubit/weather_freezed_state.dart';

part 'weather_state.dart';

// * [cubit] veya [bloc] aslında birer controller'dır
// * controller'lar [state] i değiştirmek, ve [view] a yansıtmaktan sorumludur
// ! business logic içermemelidir
// * business logic, application klasörü içerisindeki service class'ında bulunmalıdır
// * [controller] business logic yönetmesi gereken durumlarda, service class'ındaki metodları çağırmalıdır

class WeatherCubit extends Cubit<WeatherFreezedState> {
  WeatherCubit(this.weatherRepository) : super(WeatherFreezedState.loading());

  final IWeatherRepository weatherRepository;

  Future<void> getWeathers() async {
    try {
      emit(WeatherFreezedState.loading());

      final weathers = await weatherRepository.getWeathers();

      emit(WeatherFreezedState.data(status: Status.loaded, weathers: weathers));
    } catch (e) {
      emit(WeatherFreezedState.error(err: 'Bir hata meydana geldi'));
    }
  }

  void onTap(Weather weather) {
    emit(WeatherFreezedState.selected(selected: weather));
  }
}
