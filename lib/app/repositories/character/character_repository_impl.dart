import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/models/character_model.dart';
import 'package:fstarwars/app/models/films_model.dart';
import 'package:fstarwars/app/models/planet_model.dart';
import 'package:fstarwars/app/models/pre_character_model.dart';
import 'package:fstarwars/app/models/starship_model.dart';
import 'package:fstarwars/app/repositories/character/character_repository.dart';

import '../../exeptions/repository_exeption.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CustomDio dio;

  CharacterRepositoryImpl({required this.dio});

  @override
  Future<CharacterModel> getCharacter(String url, CustomDio dio) async {
    StarshipModel starshipModel;
    PlanetModel planetModel;
    List<FilmsModel> filmsModelList = <FilmsModel>[];
    dynamic characterResponse;

    try {
      characterResponse = await dio.get(url);

      var planetResponse = await dio.get(characterResponse.data['homeworld']);
      planetModel = PlanetModel.fromMap(planetResponse.data);

      if (characterResponse.data['starships'] is List) {
        if ((characterResponse.data['starships'] as List).isNotEmpty) {
          var starshipResponse = await dio.get((characterResponse.data['starships'] as List).first);
          starshipModel = StarshipModel.fromMap(starshipResponse.data);
        } else {
          starshipModel = StarshipModel(name: 'N/A');
        }
      } else {
        starshipModel = StarshipModel(name: 'N/A');
      }

      if (characterResponse.data['films'] is List) {
        for (var film in characterResponse.data['films']) {
          var filmResponse = await dio.get(film);
          var tempFilm = FilmsModel.fromMap(filmResponse.data);
          filmsModelList.add(tempFilm);
        }
      }
    } on DioException catch (e, s) {
      log('Erro ao criar personagem', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Erro ao criar personagem');
    }

    return CharacterModel(
      name: characterResponse.data['name'],
      gender: characterResponse.data['gender'],
      birthYear: characterResponse.data['birth_year'],
      homeWorld: planetModel,
      starShip: starshipModel,
      films: filmsModelList,
      url: characterResponse.data['url'],
    );
  }

  @override
  Future<List<PreCharacterModel>> getInicialData() async {
    bool notFinished = true;
    String url = '/people';
    List<PreCharacterModel> inicialData = [];

    try {
      while (notFinished) {
        var response = await dio.get(url);
        if (response.data['next'] == null) {
          notFinished = false;
        } else {
          url = response.data['next'];
        }

        for (Map<String, dynamic> character in response.data['results']) {
          inicialData.add(PreCharacterModel(
            name: character['name'] ?? '',
            url: character['url'] ?? '',
          ));
        }
      }
    } on DioException catch (e, s) {
      log('Erro ao buscar dados iniciais', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Erro ao buscar lista de filmes');
    }

    return inicialData;
  }
}
