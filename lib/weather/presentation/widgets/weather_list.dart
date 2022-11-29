import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather_bloc/weather/presentation/cubit/weather_freezed_state.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherFreezedState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (status, data) {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Text(
                    data[index].degree.toString(),
                    style: const TextStyle(fontSize: 28),
                  ),
                  title: Text(
                    data[index].name,
                    style: const TextStyle(fontSize: 28),
                  ),
                  /*   trailing: data[index] == state.selectedWeather
                    ? const Icon(Icons.check)
                    : const SizedBox.shrink(), */
                  onTap: () {
                    context.read<WeatherCubit>().onTap(data[index]);
                  },
                );
              },
            );
          },
          error: (err) => Text(err),
          selected: (selected) => const SizedBox(),
        );

        /*  if (state.status == Status.initial) {
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
                leading: Text(
                  state.weathers[index].degree.toString(),
                  style: const TextStyle(fontSize: 28),
                ),
                title: Text(
                  state.weathers[index].name,
                  style: const TextStyle(fontSize: 28),
                ),
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
        return const Text('failure state'); */
      },
    );
  }
}
