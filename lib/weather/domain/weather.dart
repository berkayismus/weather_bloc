// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// * servisten dönen response'ları modelleyeceğimiz yer [domain] klasörüdür
// * ilgili model(veya entity) fromJson ve toJson metodları içermelidir
// * dart data class generator eklentisi ile ilgili metodlar oluşturulabilir
// * model class'lar freezed veya equatable ile kolay bir şekilde oluşturulabilir
class Weather {
  final String name;
  final double degree;

  Weather({
    required this.name,
    required this.degree,
  });

  Weather copyWith({
    String? name,
    double? degree,
  }) {
    return Weather(
      name: name ?? this.name,
      degree: degree ?? this.degree,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'degree': degree,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      name: map['name'] as String,
      degree: map['degree'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Weather(name: $name, degree: $degree)';

  @override
  bool operator ==(covariant Weather other) {
    if (identical(this, other)) return true;

    return other.name == name && other.degree == degree;
  }

  @override
  int get hashCode => name.hashCode ^ degree.hashCode;
}
