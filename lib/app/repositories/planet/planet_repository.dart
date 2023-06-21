import 'package:fstarwars/app/models/planet_model.dart';

abstract class PlanetRepository {
  Future<PlanetModel> getPlanet(String url);
  Future<Map<String, dynamic>> getPlanetMap(String url);
}
