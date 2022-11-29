// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_freezed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherFreezedState _$WeatherFreezedStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return WeatherLoading.fromJson(json);
    case 'data':
      return WeatherLoaded.fromJson(json);
    case 'error':
      return WeatherFailure.fromJson(json);
    case 'selected':
      return WeatherSelected.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WeatherFreezedState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WeatherFreezedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Status status, List<Weather> weathers) data,
    required TResult Function(String err) error,
    required TResult Function(Weather? selected) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Status status, List<Weather> weathers)? data,
    TResult? Function(String err)? error,
    TResult? Function(Weather? selected)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Status status, List<Weather> weathers)? data,
    TResult Function(String err)? error,
    TResult Function(Weather? selected)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) data,
    required TResult Function(WeatherFailure value) error,
    required TResult Function(WeatherSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherFailure value)? error,
    TResult? Function(WeatherSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherFailure value)? error,
    TResult Function(WeatherSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherFreezedStateCopyWith<$Res> {
  factory $WeatherFreezedStateCopyWith(
          WeatherFreezedState value, $Res Function(WeatherFreezedState) then) =
      _$WeatherFreezedStateCopyWithImpl<$Res, WeatherFreezedState>;
}

/// @nodoc
class _$WeatherFreezedStateCopyWithImpl<$Res, $Val extends WeatherFreezedState>
    implements $WeatherFreezedStateCopyWith<$Res> {
  _$WeatherFreezedStateCopyWithImpl(this._value, this._then);

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
    extends _$WeatherFreezedStateCopyWithImpl<$Res, _$WeatherLoading>
    implements _$$WeatherLoadingCopyWith<$Res> {
  __$$WeatherLoadingCopyWithImpl(
      _$WeatherLoading _value, $Res Function(_$WeatherLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$WeatherLoading implements WeatherLoading {
  _$WeatherLoading({final String? $type}) : $type = $type ?? 'loading';

  factory _$WeatherLoading.fromJson(Map<String, dynamic> json) =>
      _$$WeatherLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherFreezedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WeatherLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Status status, List<Weather> weathers) data,
    required TResult Function(String err) error,
    required TResult Function(Weather? selected) selected,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Status status, List<Weather> weathers)? data,
    TResult? Function(String err)? error,
    TResult? Function(Weather? selected)? selected,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Status status, List<Weather> weathers)? data,
    TResult Function(String err)? error,
    TResult Function(Weather? selected)? selected,
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
    required TResult Function(WeatherFailure value) error,
    required TResult Function(WeatherSelected value) selected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherFailure value)? error,
    TResult? Function(WeatherSelected value)? selected,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherFailure value)? error,
    TResult Function(WeatherSelected value)? selected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherLoadingToJson(
      this,
    );
  }
}

abstract class WeatherLoading implements WeatherFreezedState {
  factory WeatherLoading() = _$WeatherLoading;

  factory WeatherLoading.fromJson(Map<String, dynamic> json) =
      _$WeatherLoading.fromJson;
}

/// @nodoc
abstract class _$$WeatherLoadedCopyWith<$Res> {
  factory _$$WeatherLoadedCopyWith(
          _$WeatherLoaded value, $Res Function(_$WeatherLoaded) then) =
      __$$WeatherLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Status status, List<Weather> weathers});
}

/// @nodoc
class __$$WeatherLoadedCopyWithImpl<$Res>
    extends _$WeatherFreezedStateCopyWithImpl<$Res, _$WeatherLoaded>
    implements _$$WeatherLoadedCopyWith<$Res> {
  __$$WeatherLoadedCopyWithImpl(
      _$WeatherLoaded _value, $Res Function(_$WeatherLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? weathers = null,
  }) {
    return _then(_$WeatherLoaded(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherLoaded implements WeatherLoaded {
  _$WeatherLoaded(
      {required this.status,
      required final List<Weather> weathers,
      final String? $type})
      : _weathers = weathers,
        $type = $type ?? 'data';

  factory _$WeatherLoaded.fromJson(Map<String, dynamic> json) =>
      _$$WeatherLoadedFromJson(json);

  @override
  final Status status;
  final List<Weather> _weathers;
  @override
  List<Weather> get weathers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherFreezedState.data(status: $status, weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherLoaded &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._weathers, _weathers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_weathers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherLoadedCopyWith<_$WeatherLoaded> get copyWith =>
      __$$WeatherLoadedCopyWithImpl<_$WeatherLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Status status, List<Weather> weathers) data,
    required TResult Function(String err) error,
    required TResult Function(Weather? selected) selected,
  }) {
    return data(status, weathers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Status status, List<Weather> weathers)? data,
    TResult? Function(String err)? error,
    TResult? Function(Weather? selected)? selected,
  }) {
    return data?.call(status, weathers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Status status, List<Weather> weathers)? data,
    TResult Function(String err)? error,
    TResult Function(Weather? selected)? selected,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(status, weathers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) data,
    required TResult Function(WeatherFailure value) error,
    required TResult Function(WeatherSelected value) selected,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherFailure value)? error,
    TResult? Function(WeatherSelected value)? selected,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherFailure value)? error,
    TResult Function(WeatherSelected value)? selected,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherLoadedToJson(
      this,
    );
  }
}

abstract class WeatherLoaded implements WeatherFreezedState {
  factory WeatherLoaded(
      {required final Status status,
      required final List<Weather> weathers}) = _$WeatherLoaded;

  factory WeatherLoaded.fromJson(Map<String, dynamic> json) =
      _$WeatherLoaded.fromJson;

  Status get status;
  List<Weather> get weathers;
  @JsonKey(ignore: true)
  _$$WeatherLoadedCopyWith<_$WeatherLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherFailureCopyWith<$Res> {
  factory _$$WeatherFailureCopyWith(
          _$WeatherFailure value, $Res Function(_$WeatherFailure) then) =
      __$$WeatherFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$WeatherFailureCopyWithImpl<$Res>
    extends _$WeatherFreezedStateCopyWithImpl<$Res, _$WeatherFailure>
    implements _$$WeatherFailureCopyWith<$Res> {
  __$$WeatherFailureCopyWithImpl(
      _$WeatherFailure _value, $Res Function(_$WeatherFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$WeatherFailure(
      err: null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherFailure implements WeatherFailure {
  _$WeatherFailure({required this.err, final String? $type})
      : $type = $type ?? 'error';

  factory _$WeatherFailure.fromJson(Map<String, dynamic> json) =>
      _$$WeatherFailureFromJson(json);

  @override
  final String err;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherFreezedState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherFailure &&
            (identical(other.err, err) || other.err == err));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherFailureCopyWith<_$WeatherFailure> get copyWith =>
      __$$WeatherFailureCopyWithImpl<_$WeatherFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Status status, List<Weather> weathers) data,
    required TResult Function(String err) error,
    required TResult Function(Weather? selected) selected,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Status status, List<Weather> weathers)? data,
    TResult? Function(String err)? error,
    TResult? Function(Weather? selected)? selected,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Status status, List<Weather> weathers)? data,
    TResult Function(String err)? error,
    TResult Function(Weather? selected)? selected,
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
    required TResult Function(WeatherFailure value) error,
    required TResult Function(WeatherSelected value) selected,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherFailure value)? error,
    TResult? Function(WeatherSelected value)? selected,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherFailure value)? error,
    TResult Function(WeatherSelected value)? selected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherFailureToJson(
      this,
    );
  }
}

abstract class WeatherFailure implements WeatherFreezedState {
  factory WeatherFailure({required final String err}) = _$WeatherFailure;

  factory WeatherFailure.fromJson(Map<String, dynamic> json) =
      _$WeatherFailure.fromJson;

  String get err;
  @JsonKey(ignore: true)
  _$$WeatherFailureCopyWith<_$WeatherFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeatherSelectedCopyWith<$Res> {
  factory _$$WeatherSelectedCopyWith(
          _$WeatherSelected value, $Res Function(_$WeatherSelected) then) =
      __$$WeatherSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Weather? selected});
}

/// @nodoc
class __$$WeatherSelectedCopyWithImpl<$Res>
    extends _$WeatherFreezedStateCopyWithImpl<$Res, _$WeatherSelected>
    implements _$$WeatherSelectedCopyWith<$Res> {
  __$$WeatherSelectedCopyWithImpl(
      _$WeatherSelected _value, $Res Function(_$WeatherSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$WeatherSelected(
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherSelected implements WeatherSelected {
  _$WeatherSelected({this.selected, final String? $type})
      : $type = $type ?? 'selected';

  factory _$WeatherSelected.fromJson(Map<String, dynamic> json) =>
      _$$WeatherSelectedFromJson(json);

  @override
  final Weather? selected;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WeatherFreezedState.selected(selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherSelected &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherSelectedCopyWith<_$WeatherSelected> get copyWith =>
      __$$WeatherSelectedCopyWithImpl<_$WeatherSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Status status, List<Weather> weathers) data,
    required TResult Function(String err) error,
    required TResult Function(Weather? selected) selected,
  }) {
    return selected(this.selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Status status, List<Weather> weathers)? data,
    TResult? Function(String err)? error,
    TResult? Function(Weather? selected)? selected,
  }) {
    return selected?.call(this.selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Status status, List<Weather> weathers)? data,
    TResult Function(String err)? error,
    TResult Function(Weather? selected)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this.selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WeatherLoading value) loading,
    required TResult Function(WeatherLoaded value) data,
    required TResult Function(WeatherFailure value) error,
    required TResult Function(WeatherSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WeatherLoading value)? loading,
    TResult? Function(WeatherLoaded value)? data,
    TResult? Function(WeatherFailure value)? error,
    TResult? Function(WeatherSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WeatherLoading value)? loading,
    TResult Function(WeatherLoaded value)? data,
    TResult Function(WeatherFailure value)? error,
    TResult Function(WeatherSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherSelectedToJson(
      this,
    );
  }
}

abstract class WeatherSelected implements WeatherFreezedState {
  factory WeatherSelected({final Weather? selected}) = _$WeatherSelected;

  factory WeatherSelected.fromJson(Map<String, dynamic> json) =
      _$WeatherSelected.fromJson;

  Weather? get selected;
  @JsonKey(ignore: true)
  _$$WeatherSelectedCopyWith<_$WeatherSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
