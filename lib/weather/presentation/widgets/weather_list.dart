import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/weather/presentation/cubit/cubit/weather_cubit.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (data, selected) {
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
                  trailing: data[index] == selected
                      ? const Icon(Icons.check)
                      : const SizedBox.shrink(),
                  onTap: () {
                    context.read<WeatherCubit>().onTap(data[index]);
                  },
                );
              },
            );
          },
          error: (err) => Text(err),
        );
      },
    );
  }
}
