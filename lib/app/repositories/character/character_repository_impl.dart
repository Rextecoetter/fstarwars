import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/models/character_model.dart';
import 'package:fstarwars/app/repositories/character/character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CustomDio dio;

  CharacterRepositoryImpl({required this.dio});

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
