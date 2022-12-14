import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_bloc/features/weather/presentation/cubit/cubit/weather_cubit.dart';

part 'weather_symbols_state.dart';

class WeatherSymbolsCubit extends Cubit<WeatherSymbolsState> {
  final WeatherCubit weatherCubit;
  late StreamSubscription<WeatherState> weatherStateSub;

  WeatherSymbolsCubit({
    required this.weatherCubit,
  }) : super(WeatherSymbolsState.initial()) {
    weatherStateSub = weatherCubit.stream.listen(_listenWeatherState);
  }

  void _listenWeatherState(WeatherState weatherState) {
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

  @override
  Future<void> close() {
    weatherStateSub.cancel();
    return super.close();
  }
}
