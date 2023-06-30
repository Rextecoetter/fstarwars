import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/models/character_model.dart';
import 'package:fstarwars/app/models/pre_character_model.dart';

abstract class CharacterRepository {
  Future<List<PreCharacterModel>> getInicialData();
  Future<CharacterModel> getCharacter(String url, CustomDio dio);
}
