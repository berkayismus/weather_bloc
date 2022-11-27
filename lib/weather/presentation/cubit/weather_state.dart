// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'weather_cubit.dart';

enum Status { initial, loading, loaded, failure }

class WeatherState extends Equatable {
  final Status status;
  final List<Weather> weathers;
  final Weather? selectedWeather;

  const WeatherState({
    required this.status,
    required this.weathers,
    required this.selectedWeather,
  });

  factory WeatherState.initial() {
    return const WeatherState(
        status: Status.initial, weathers: [], selectedWeather: null);
  }

  @override
  List<Object?> get props => [status, weathers, selectedWeather];

  WeatherState copyWith({
    Status? status,
    List<Weather>? weathers,
    Weather? selected,
  }) {
    return WeatherState(
      status: status ?? this.status,
      weathers: weathers ?? this.weathers,
      selectedWeather: selected ?? selectedWeather,
    );
  }
}
