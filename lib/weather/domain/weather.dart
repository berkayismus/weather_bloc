import 'dart:convert';

class Weather {
  final String name;
  final double degree;

  Weather({
    required this.name,
    required this.degree,
  });

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
  String toString() => 'City(name: $name, degree: $degree)';

  @override
  bool operator ==(covariant Weather other) {
    if (identical(this, other)) return true;

    return other.name == name && other.degree == degree;
  }

  @override
  int get hashCode => name.hashCode ^ degree.hashCode;
}