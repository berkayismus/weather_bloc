part of 'weather_cubit.dart';

enum Status { initial, loading, loaded, failure }

class WeatherState extends Equatable {
  final Status status;
  final List<Weather> weathers;
  final Weather? selected;

  const WeatherState({
    required this.weathers,
    this.selected,
    required this.status,
  });

  factory WeatherState.initial() {
    return const WeatherState(
      status: Status.initial,
      weathers: [],
    );
  }

  @override
  List<Object?> get props => [status, weathers, selected];

  @override
  bool get stringify => true;

  WeatherState copyWith({
    Status? status,
    List<Weather>? weathers,
    Weather? selected,
  }) {
    return WeatherState(
      status: status ?? this.status,
      weathers: weathers ?? this.weathers,
      selected: selected ?? this.selected,
    );
  }
}
