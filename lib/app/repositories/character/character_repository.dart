import 'package:fstarwars/app/models/character_model.dart';

abstract class CharacterRepository {
  Future<List<CharacterModel>> getAllCharacters();
  Future<List<Map<String, dynamic>>> getInicialData();
  Future<CharacterModel> getCharacter();
}
