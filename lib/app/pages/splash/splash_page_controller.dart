import 'package:fstarwars/app/repositories/character/character_repository_impl.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() {
    CharacterRepositoryImpl characterRepositoryImpl = CharacterRepositoryImpl();

    characterRepositoryImpl.getAllCharacters();
    super.onInit();
  }
}
