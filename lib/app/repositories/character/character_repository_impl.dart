import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/exeptions/repository_exeption.dart';
import 'package:fstarwars/app/models/character_model.dart';
import 'package:fstarwars/app/repositories/character/character_repository.dart';
import 'package:fstarwars/app/repositories/films/films_repository_impl.dart';
import 'package:fstarwars/app/repositories/planet/planet_repository_impl.dart';
import 'package:fstarwars/app/repositories/starship/starship_repository_impl.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CustomDio dio;

  CharacterRepositoryImpl({required this.dio});

  @override
  Future<List<CharacterModel>> getAllCharacters() async {
    List<CharacterModel> characterList = [];
    Map<String, dynamic> tempStarshipMap;
    Map<String, dynamic> tempHomeworldMap;
    List<Map<String, dynamic>> tempFilmsListMap;

    StarshipRepositoryImpl starshipRepositoryImpl = StarshipRepositoryImpl();
    PlanetRepositoryImpl planetRepositoryImpl = PlanetRepositoryImpl();
    FilmsRepositoryImpl filmsRepositoryImpl = FilmsRepositoryImpl();

    bool notFinished = true;
    String url = '/people';

    try {
      while (notFinished) {
        notFinished = false;
        print('dio get character');
        var response = await dio.get(url);
        print('dio character recebido');

        if (response.data['next'] == null) {
          notFinished = false;
        } else {
          url = response.data['next'];
        }

        for (Map<String, dynamic> character in response.data['results']) {
          List starshipList = [];
          if (character['starships'] is List) {
            starshipList = character['starships'];
          }
          if (starshipList.isNotEmpty) {
            tempStarshipMap = await starshipRepositoryImpl.getStarshipMap(starshipList.first);
          } else {
            tempStarshipMap = {};
          }

          tempHomeworldMap = await planetRepositoryImpl.getPlanetMap(character['homeworld']);

          List filmList = [];
          if (character['films'] is List) {
            filmList = character['films'];
          }
          if (filmList.isNotEmpty) {
            tempFilmsListMap = await filmsRepositoryImpl.getFilmsMap(filmList);
          } else {
            tempFilmsListMap = [{}];
          }

          Map<String, dynamic> map = {
            'name': character['name'],
            'gender': character['gender'],
            'birth_year': character['birth_year'],
            'homeworld': tempHomeworldMap,
            'starship': tempStarshipMap,
            'films': tempFilmsListMap,
            'url': character['url'],
          };

          CharacterModel characterModel = CharacterModel.fromMap(map);

          print('----- personagem criado------');
          print('Nome ${characterModel.name}');
          print('Planeta ${characterModel.homeWorld.name}');
          print('Nave ${characterModel.starShip.name}');
          print('----------------------------------------');

          characterList.add(CharacterModel.fromMap(map));
        }
      }

      return characterList;
    } on DioException catch (e, s) {
      log('Erro ao buscar personagem', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Erro ao buscar personagem');
    }
  }

  @override
  Future<CharacterModel> getCharacter() {
    // TODO: implement getCharacter
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, String>>> getInicialData() async {
    bool notFinished = true;
    String url = '/people';
    List<Map<String, String>> inicialData = [];

    while (notFinished) {
      var response = await dio.get(url);
      if (response.data['next'] == null) {
        notFinished = false;
      } else {
        url = response.data['next'];
      }

      for (Map<String, dynamic> character in response.data['results']) {
        inicialData.add({
          'name': character['name'] ?? '',
          'url': character['url'] ?? '',
        });
      }
    }

    return inicialData;
  }
}
