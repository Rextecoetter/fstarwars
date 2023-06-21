import 'package:fstarwars/app/models/films_model.dart';

abstract class FilmsRepository {
  Future<List<FilmsModel>> getFilms(List<String> urlList);
  Future<List<Map<String, dynamic>>> getFilmsMap(List<String> urlList);
}
