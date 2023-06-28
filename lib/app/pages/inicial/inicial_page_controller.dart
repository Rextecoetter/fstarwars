import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:get/get.dart';

class InicialPageController extends GetxController {
  List<Map<String, dynamic>> filteredCharacterList = List<Map<String, dynamic>>.empty().obs;
  List<Map<String, dynamic>> characterListFull = List<Map<String, dynamic>>.from(Get.arguments);

  @override
  void onInit() {
    reset();
    super.onInit();
  }

  void reset() {
    filteredCharacterList.assignAll(characterListFull);
  }

  CustomDio dio = Get.find(tag: 'dio');


  List<Map<String, dynamic>> getFiltered(String filter) {
    if (filter.isEmpty) {
      reset();
    } else {
      filteredCharacterList.clear();
      for (var character in characterListFull) {
        if (((character['name'] as String).toLowerCase()).contains(filter.toLowerCase())) {
          filteredCharacterList.add(character);
        }
      }

      for (var pp in filteredCharacterList) {
        print(pp['name']); //isso eu fiz pra ver a lista filtrada
      }
    }
    return filteredCharacterList;
  }
}
