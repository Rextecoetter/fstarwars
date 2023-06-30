import 'package:fstarwars/app/pages/character_detail/character_detail_controller.dart';
import 'package:fstarwars/app/repositories/character/character_repository_impl.dart';
import 'package:get/get.dart';


class CharacterDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CharacterRepositoryImpl(dio: Get.find(tag: 'dio')));
    Get.put(CharacterDetailController());
  }
}
