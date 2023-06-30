import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/exeptions/repository_exeption.dart';
import 'package:fstarwars/app/models/films_model.dart';
import 'package:fstarwars/app/repositories/films/films_repository.dart';

class FilmsRepositoryImpl implements FilmsRepository {
  CustomDio dio = CustomDio();

  @override
  Future<List<FilmsModel>> getFilms(List<String> urlList) async {
    List<FilmsModel> filmList = [];

    try {
      for (var url in urlList) {
        var result = await dio.get(url);
        filmList.add(FilmsModel.fromMap(result.data));
      }
      return filmList;
    } on DioException catch (e, s) {
      log('Erro ao buscar filmes', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Erro ao buscar filmes');
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getFilmsMap(List urlList) async {
    List<Map<String, dynamic>> filmList = [];
    CustomDio dio = CustomDio();

    try {
      for (var url in urlList) {
        var response = await dio.get(url);
        filmList.add(response.data);
      }

      return filmList;
    } on DioException catch (e, s) {
      log('Erro ao buscar lista de filmes', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Erro ao buscar lista de filmes');
    }
  }
}
