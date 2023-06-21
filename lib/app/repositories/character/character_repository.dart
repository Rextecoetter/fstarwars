import 'package:fstarwars/app/models/character_model.dart';

abstract class CharacterRepository {
  Future<List<CharacterModel>> getAllCharacters();
  Future<CharacterModel> getCharacter();
}
