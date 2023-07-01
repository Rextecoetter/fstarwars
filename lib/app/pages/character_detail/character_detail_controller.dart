import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/models/character_model.dart';
import 'package:fstarwars/app/models/pre_character_model.dart';
import 'package:fstarwars/app/repositories/character/character_repository_impl.dart';
import 'package:get/get.dart';

class CharacterDetailController extends GetxController with StateMixin<CharacterModel> {
  PreCharacterModel preCharacterModel = Get.arguments;
  CharacterRepositoryImpl characterRepositoryImpl = Get.find();
  CustomDio dio = Get.find(tag: 'dio');
  final characterModel = Rxn<CharacterModel>();

  @override
  void onInit() {
    createCharacter();
    super.onInit();
  }

  Future<void> createCharacter() async {
    change(state, status: RxStatus.loading());
    characterModel.value = await characterRepositoryImpl.getCharacter(preCharacterModel.url, dio);
    change(state, status: RxStatus.success());
  }
}
