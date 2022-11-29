part of 'weather_symbols_cubit.dart';

enum Symbols { cold, cloudy, sunny }

class WeatherSymbolsState extends Equatable {
  final Symbols? symbol;

  const WeatherSymbolsState({
    required this.symbol,
  });

  factory WeatherSymbolsState.initial() {
    return const WeatherSymbolsState(symbol: null);
  }

  String get symbolIcon {
    if (symbol == Symbols.cold) {
      return '⛄';
    } else if (symbol == Symbols.cloudy) {
      return '☁';
    } else if (symbol == Symbols.sunny) {
      return '☀';
    }
    return '';
  }

  @override
  List<Object?> get props => [symbol];

  @override
  bool get stringify => true;

  WeatherSymbolsState copyWith({
    Symbols? symbol,
  }) {
    return WeatherSymbolsState(
      symbol: symbol ?? this.symbol,
    );
  }
}
