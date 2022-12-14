import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/features/weather/presentation/cubit/cubit/weather_cubit.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({super.key});

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
                title: Text(
                  state.weathers[index].name,
                  style: const TextStyle(fontSize: 28),
                ),
                subtitle: Text(
                  '${state.weathers[index].degree} °C',
                  style: const TextStyle(fontSize: 28),
                ),
                trailing: state.weathers[index] == state.selected
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
