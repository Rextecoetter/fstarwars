import 'dart:convert';

class PlanetModel {
  final String name;
  final String terrain;
  final String diameter;

  PlanetModel({
    required this.name,
    required this.terrain,
    required this.diameter,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'terrain': terrain,
      'diameter': diameter,
    };
  }

  factory PlanetModel.fromMap(Map<String, dynamic> map) {
    return PlanetModel(
      name: map['name'] ?? '',
      terrain: map['terrain'] ?? '',
      diameter: map['diameter'] ?? '',
    );
  }

  String toJason() => jsonEncode(toMap());

  factory PlanetModel.fomJason(String source) => PlanetModel.fromMap(jsonDecode(source));
}
