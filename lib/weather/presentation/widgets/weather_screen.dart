import 'package:flutter/material.dart';
import 'package:weather_bloc/background_color/presentation/cubit/background_color_cubit.dart';
import 'package:weather_bloc/weather/data/repositories/weather_repository.dart';
import 'package:weather_bloc/weather/presentation/cubit/weather_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        BlocProvider(
          create: (context) =>
              WeatherCubit(context.read<IWeatherRepository>())..getWeathers(),
        ),
        BlocProvider(
          create: (context) => BackgroundColorCubit(
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
      appBar: AppBar(),
      backgroundColor:
          context.watch<BackgroundColorCubit>().state.backgroundColor,
      body: const _WeatherList(),
    );
  }
}

class _WeatherList extends StatelessWidget {
  const _WeatherList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state.status == Status.initial) {
          return const Text('initial state');
        } else if (state.status == Status.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status == Status.loaded) {
          return ListView.builder(
            itemCount: state.weathers.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Text(state.weathers[index].degree.toString()),
                title: Text(state.weathers[index].name),
                trailing: state.weathers[index] == state.selectedWeather
                    ? const Icon(Icons.check)
                    : const SizedBox.shrink(),
                onTap: () {
                  context.read<WeatherCubit>().onTap(state.weathers[index]);
                },
              );
            },
          );
        }
        return const Text('failure state');
      },
    );
  }
}
