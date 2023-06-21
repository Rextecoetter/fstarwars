import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/exeptions/repository_exeption.dart';
import 'package:fstarwars/app/models/planet_model.dart';
import 'package:fstarwars/app/repositories/planet/planet_repository.dart';

class PlanetRepositoryImpl implements PlanetRepository {
  CustomDio dio = CustomDio();

  @override
  Future<PlanetModel> getPlanet(String url) async {
    PlanetModel planet;

    try {
      var result = await dio.get(url);
      planet = PlanetModel.fromMap(result.data);
      return planet;
    } on DioException catch (e, s) {
      log('Erro ao buscar planeta', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Erro ao buscar planeta');
    }
  }

  @override
  Future<Map<String, dynamic>> getPlanetMap(String url) async {
    try {
      print('dio get planet');
      var result = await dio.get(url);
      print('dio planeta recebido');
      return result.data;
    } on DioException catch (e, s) {
      log('Erro ao buscar planeta', error: e, stackTrace: s);
      throw RepositoryExeption(message: 'Erro ao buscar planeta');
    }
  }
}
