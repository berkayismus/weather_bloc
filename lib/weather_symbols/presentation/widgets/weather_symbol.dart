import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/weather_symbols/presentation/cubit/weather_symbols_cubit.dart';

class WeatherSymbol extends StatelessWidget {
  const WeatherSymbol({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherSymbolsCubit, WeatherSymbolsState>(
      builder: (context, state) {
        return Text(
          state.symbolIcon,
          style: const TextStyle(fontSize: 36),
        );
      },
    );
  }
}
