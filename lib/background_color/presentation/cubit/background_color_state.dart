part of 'background_color_cubit.dart';

class BackgroundColorState extends Equatable {
  final Color backgroundColor;

  const BackgroundColorState({
    required this.backgroundColor,
  });

  factory BackgroundColorState.initial() {
    return const BackgroundColorState(
      backgroundColor: Colors.white,
    );
  }

  @override
  List<Object> get props => [backgroundColor];

  @override
  bool get stringify => true;

  BackgroundColorState copyWith({
    Color? backgroundColor,
  }) {
    return BackgroundColorState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
