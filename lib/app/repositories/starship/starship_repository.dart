import 'package:fstarwars/app/models/starship_model.dart';

abstract class StarshipRepository {
  Future<StarshipModel> getStarship(String url);
  Future<Map<String, dynamic>> getStarshipMap(String url);
}
