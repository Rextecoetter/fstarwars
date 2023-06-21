import 'dart:convert';

import 'package:fstarwars/app/models/films_model.dart';
import 'package:fstarwars/app/models/planet_model.dart';
import 'package:fstarwars/app/models/starship_model.dart';

class CharacterModel {
  final String name;
  final String gender;
  final String birthYear;
  final PlanetModel homeWorld;
  final StarshipModel starShip;
  final List<FilmsModel> films;
  final String url;

  CharacterModel({
    required this.name,
    required this.gender,
    required this.birthYear,
    required this.homeWorld,
    required this.starShip,
    required this.films,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'gender': gender,
      'birth_year': birthYear,
      'homeworld': homeWorld.toMap(),
      'starship': starShip.toMap(),
      'films': films.map((e) => e.toMap()).toList(),
      'url': url,
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      name: map['name'] ?? '',
      gender: map['gender'] ?? '',
      birthYear: map['birthYear'] ?? '',
      homeWorld: PlanetModel.fromMap(map['homeworld']),
      starShip: StarshipModel.fromMap(map['starship']),
      films: map['films']?.map<FilmsModel>((e) => FilmsModel.fromMap(e)).toList() ?? <FilmsModel>[],
      url: map['url'],
    );
  }

  String toJason() => jsonEncode(toMap());

  factory CharacterModel.fomJason(String source) => CharacterModel.fromMap(jsonDecode(source));
}
