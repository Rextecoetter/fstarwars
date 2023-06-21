import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/exeptions/repository_exeption.dart';
import 'package:fstarwars/app/models/starship_model.dart';
import 'package:fstarwars/app/repositories/starship/starship_repository.dart';

class StarshipRepositoryImpl implements StarshipRepository {
  @override
  Future<StarshipModel> getStarship(String url) async {
    StarshipModel starshipModel;

    CustomDio dio = CustomDio();

    try {
      var response = await dio.get(url);
      starshipModel = StarshipModel.fromMap(response.data);
      return starshipModel;
    } on DioException catch (e, s) {
      log('Erro ao buscar nave!', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Ocorreu erro ao buscar nave');
    }
  }

  @override
  Future<Map<String, dynamic>> getStarshipMap(String url) async {
    CustomDio dio = CustomDio();
    try {
      print('dio get starship');
      var response = await dio.get(url);
      print('dio starship recebido');
      return response.data;
    } on DioException catch (e, s) {
      log('Erro ao buscar nave!', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Ocorreu erro ao buscar nave');
    }
  }
}
