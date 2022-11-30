// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Weather> weathers, Weather? selected) data,
    required TResult Function(String err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Weather> weathers, Weather? selected)? data,
    TResult? Function(String err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Weather> weathers, Weather? selected)? data,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) data,
    required TResult Function(WeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WeatherLoadingCopyWith<$Res> {
  factory _$$WeatherLoadingCopyWith(
          _$WeatherLoading value, $Res Function(_$WeatherLoading) then) =
      __$$WeatherLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeatherLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoading>
    implements _$$WeatherLoadingCopyWith<$Res> {
  __$$WeatherLoadingCopyWithImpl(
      _$WeatherLoading _value, $Res Function(_$WeatherLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WeatherLoading implements WeatherLoading {
  const _$WeatherLoading();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Weather> weathers, Weather? selected) data,
    required TResult Function(String err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Weather> weathers, Weather? selected)? data,
    TResult? Function(String err)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Weather> weathers, Weather? selected)? data,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) data,
    required TResult Function(WeatherError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherLoading implements WeatherState {
  const factory WeatherLoading() = _$WeatherLoading;
}

/// @nodoc
abstract class _$$WeatherLoadedCopyWith<$Res> {
  factory _$$WeatherLoadedCopyWith(
          _$WeatherLoaded value, $Res Function(_$WeatherLoaded) then) =
      __$$WeatherLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Weather> weathers, Weather? selected});
}

/// @nodoc
class __$$WeatherLoadedCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherLoaded>
    implements _$$WeatherLoadedCopyWith<$Res> {
  __$$WeatherLoadedCopyWithImpl(
      _$WeatherLoaded _value, $Res Function(_$WeatherLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
    Object? selected = freezed,
  }) {
    return _then(_$WeatherLoaded(
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }
}

/// @nodoc

class _$WeatherLoaded implements WeatherLoaded {
  const _$WeatherLoaded(
      {final List<Weather> weathers = const [], this.selected})
      : _weathers = weathers;

  final List<Weather> _weathers;
  @override
  @JsonKey()
  List<Weather> get weathers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @override
  final Weather? selected;

  @override
  String toString() {
    return 'WeatherState.data(weathers: $weathers, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoaded &&
            const DeepCollectionEquality().equals(other._weathers, _weathers) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_weathers), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLoadedCopyWith<_$WeatherLoaded> get copyWith =>
      __$$WeatherLoadedCopyWithImpl<_$WeatherLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Weather> weathers, Weather? selected) data,
    required TResult Function(String err) error,
  }) {
    return data(weathers, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Weather> weathers, Weather? selected)? data,
    TResult? Function(String err)? error,
  }) {
    return data?.call(weathers, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Weather> weathers, Weather? selected)? data,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(weathers, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) data,
    required TResult Function(WeatherError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class WeatherLoaded implements WeatherState {
  const factory WeatherLoaded(
      {final List<Weather> weathers,
      final Weather? selected}) = _$WeatherLoaded;

  List<Weather> get weathers;
  Weather? get selected;
  @JsonKey(ignore: true)
  _$$WeatherLoadedCopyWith<_$WeatherLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherErrorCopyWith<$Res> {
  factory _$$WeatherErrorCopyWith(
          _$WeatherError value, $Res Function(_$WeatherError) then) =
      __$$WeatherErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$WeatherErrorCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherError>
    implements _$$WeatherErrorCopyWith<$Res> {
  __$$WeatherErrorCopyWithImpl(
      _$WeatherError _value, $Res Function(_$WeatherError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$WeatherError(
      err: null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherError implements WeatherError {
  const _$WeatherError({required this.err});

  @override
  final String err;

  @override
  String toString() {
    return 'WeatherState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherError &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherErrorCopyWith<_$WeatherError> get copyWith =>
      __$$WeatherErrorCopyWithImpl<_$WeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Weather> weathers, Weather? selected) data,
    required TResult Function(String err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Weather> weathers, Weather? selected)? data,
    TResult? Function(String err)? error,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Weather> weathers, Weather? selected)? data,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) data,
    required TResult Function(WeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherError implements WeatherState {
  const factory WeatherError({required final String err}) = _$WeatherError;

  String get err;
  @JsonKey(ignore: true)
  _$$WeatherErrorCopyWith<_$WeatherError> get copyWith =>
      throw _privateConstructorUsedError;
}
