import 'package:fstarwars/app/models/pre_character_model.dart';
import 'package:get/get.dart';

class InicialPageController extends GetxController {
  List<PreCharacterModel> filteredCharacterList = List<PreCharacterModel>.empty().obs;
  List<PreCharacterModel> characterListFull = List<PreCharacterModel>.from(Get.arguments);

  @override
  void onInit() {
    reset();
    super.onInit();
  }

  void reset() {
    filteredCharacterList.assignAll(characterListFull);
  }

  List<PreCharacterModel> getFiltered(String filter) {
    if (filter.isEmpty) {
      reset();
    } else {
      filteredCharacterList.clear();
      for (var character in characterListFull) {
        if ((character.name.toLowerCase()).contains(filter.toLowerCase())) {
          filteredCharacterList.add(character);
        }
      }
    }
    return filteredCharacterList;
  }

  void goToCharacter(PreCharacterModel preCharacterModel) {
    Get.toNamed('/character', arguments: preCharacterModel);
  }
}
