import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/models/character_model.dart';
import 'package:fstarwars/app/models/pre_character_model.dart';
import 'package:fstarwars/app/repositories/character/character_repository_impl.dart';
import 'package:get/get.dart';

class CharacterDetailController extends GetxController {
  PreCharacterModel preCharacterModel = Get.arguments;
  CharacterRepositoryImpl characterRepositoryImpl = Get.find();
  CustomDio dio = Get.find(tag: 'dio');
  late CharacterModel characterModel;

  @override
  void onInit() async {
    characterModel = await characterRepositoryImpl.getCharacter(preCharacterModel.url, dio);
    super.onInit();
  }
}
