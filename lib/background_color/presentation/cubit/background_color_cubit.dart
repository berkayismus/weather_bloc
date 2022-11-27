import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather_bloc/weather/presentation/cubit/weather_cubit.dart';

part 'background_color_state.dart';

class BackgroundColorCubit extends Cubit<BackgroundColorState> {
  BackgroundColorCubit({
    required this.weatherCubit,
  }) : super(BackgroundColorState.initial()) {
    weatherCubit.stream.listen((weatherState) {
      final degree = weatherState.selectedWeather?.degree;
      if (degree != null && degree == 10) {
        changeBackgroundColor(Colors.blue);
      }
      if (degree != null && degree == 5) {
        changeBackgroundColor(Colors.grey);
      }
      if (degree != null && degree == -5) {
        changeBackgroundColor(Colors.red);
      }
    });
  }

  final WeatherCubit weatherCubit;

  void changeBackgroundColor(Color color) {
    emit(state.copyWith(backgroundColor: color));
  }
}
