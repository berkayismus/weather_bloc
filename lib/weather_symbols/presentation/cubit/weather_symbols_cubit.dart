import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_bloc/weather/presentation/cubit/cubit/weather_cubit.dart';

part 'weather_symbols_state.dart';

class WeatherSymbolsCubit extends Cubit<WeatherSymbolsState> {
  WeatherSymbolsCubit({
    required this.weatherCubit,
  }) : super(WeatherSymbolsState.initial()) {
    weatherStateSub = weatherCubit.stream.listen(_listenWeatherState);
  }

  final WeatherCubit weatherCubit;
  late StreamSubscription<WeatherState> weatherStateSub;

  void _listenWeatherState(WeatherState weatherState) {
    if (weatherState is WeatherLoaded) {
      final degree = weatherState.selected?.degree;
      final degreeIsNotNull = degree != null;
      if (degreeIsNotNull && degree <= -5) {
        emit(state.copyWith(symbol: Symbols.cold));
      } else if (degreeIsNotNull && degree <= -2) {
        emit(state.copyWith(symbol: Symbols.cloudy));
      } else {
        emit(state.copyWith(symbol: Symbols.sunny));
      }
    }
  }

  @override
  Future<void> close() {
    weatherStateSub.cancel();
    return super.close();
  }
}
