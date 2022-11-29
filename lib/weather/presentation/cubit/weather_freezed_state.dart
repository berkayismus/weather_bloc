import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_bloc/weather/domain/weather.dart';
import 'package:weather_bloc/weather/presentation/cubit/weather_cubit.dart';

part 'weather_freezed_state.freezed.dart';
part 'weather_freezed_state.g.dart';

@freezed
class WeatherFreezedState with _$WeatherFreezedState {
  factory WeatherFreezedState.loading() = WeatherLoading;
  factory WeatherFreezedState.data({
    required Status status,
    required List<Weather> weathers,
  }) = WeatherLoaded;
  factory WeatherFreezedState.error({required String err}) = WeatherFailure;
  factory WeatherFreezedState.selected({Weather? selected}) = WeatherSelected;

  factory WeatherFreezedState.fromJson(Map<String, dynamic> json) =>
      _$WeatherFreezedStateFromJson(json);
}
