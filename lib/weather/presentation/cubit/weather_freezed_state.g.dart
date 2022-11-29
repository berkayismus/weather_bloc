// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_freezed_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherLoading _$$WeatherLoadingFromJson(Map<String, dynamic> json) =>
    _$WeatherLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherLoadingToJson(_$WeatherLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WeatherLoaded _$$WeatherLoadedFromJson(Map<String, dynamic> json) =>
    _$WeatherLoaded(
      status: $enumDecode(_$StatusEnumMap, json['status']),
      weathers: (json['weathers'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as String))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherLoadedToJson(_$WeatherLoaded instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status]!,
      'weathers': instance.weathers,
      'runtimeType': instance.$type,
    };

const _$StatusEnumMap = {
  Status.initial: 'initial',
  Status.loading: 'loading',
  Status.loaded: 'loaded',
  Status.failure: 'failure',
};

_$WeatherFailure _$$WeatherFailureFromJson(Map<String, dynamic> json) =>
    _$WeatherFailure(
      err: json['err'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherFailureToJson(_$WeatherFailure instance) =>
    <String, dynamic>{
      'err': instance.err,
      'runtimeType': instance.$type,
    };

_$WeatherSelected _$$WeatherSelectedFromJson(Map<String, dynamic> json) =>
    _$WeatherSelected(
      selected: json['selected'] == null
          ? null
          : Weather.fromJson(json['selected'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WeatherSelectedToJson(_$WeatherSelected instance) =>
    <String, dynamic>{
      'selected': instance.selected,
      'runtimeType': instance.$type,
    };
