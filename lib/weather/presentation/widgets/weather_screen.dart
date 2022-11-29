import 'package:flutter/material.dart';
import 'package:weather_bloc/weather/data/repositories/weather_repository.dart';
import 'package:weather_bloc/weather/presentation/cubit/weather_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/weather/presentation/widgets/weather_list.dart';
import 'package:weather_bloc/weather_symbols/presentation/cubit/weather_symbols_cubit.dart';
import 'package:weather_bloc/weather_symbols/presentation/widgets/weather_symbol.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<IWeatherRepository>(
      create: (_) => WeatherRepository(),
      child: const _Blocs(),
    );
  }
}

class _Blocs extends StatelessWidget {
  const _Blocs();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherCubit>(
          create: (context) =>
              WeatherCubit(context.read<IWeatherRepository>())..getWeathers(),
        ),
        BlocProvider<WeatherSymbolsCubit>(
          create: (context) => WeatherSymbolsCubit(
            weatherCubit: context.read<WeatherCubit>(),
          ),
        ),
      ],
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive Weather Example'),
      ),
      body: Column(
        children: const [
          WeatherSymbol(),
          Expanded(child: WeatherList()),
        ],
      ),
    );
  }
}
