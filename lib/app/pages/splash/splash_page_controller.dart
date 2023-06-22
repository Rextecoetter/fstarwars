import 'package:fstarwars/app/repositories/character/character_repository_impl.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  List<Map<String, dynamic>> inicialData = <Map<String, dynamic>>[].obs;

  @override
  void onInit() async {
    CharacterRepositoryImpl characterRepositoryImpl = CharacterRepositoryImpl(dio: Get.find(tag: 'dio'));

    List<Map<String, dynamic>> inicialData = await characterRepositoryImpl.getInicialData();
    Get.offAndToNamed('/inicial', arguments: inicialData);
    super.onInit();
  }
}
