part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = WeatherLoading;
  const factory WeatherState.data(
      {@Default([]) List<Weather> weathers, Weather? selected}) = WeatherLoaded;
  const factory WeatherState.error({required String err}) = WeatherError;
  /*  const factory WeatherState.selected({Weather? selected}) =
      WeatherSelected; */
}
