import 'dart:convert';

class StarshipModel {
  String name;

  StarshipModel({required this.name});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory StarshipModel.fromMap(Map<String, dynamic> map) {
    return StarshipModel(
      name: map['name'] ?? '',
    );
  }

  String toJason() {
    return jsonEncode(toMap());
  }

  factory StarshipModel.fromJason(String source) => StarshipModel.fromMap(jsonDecode(source));
}
