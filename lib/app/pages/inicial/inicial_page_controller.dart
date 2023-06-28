import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:get/get.dart';

class InicialPageController extends GetxController {
  final List<Map<String, dynamic>> characterListFull = Get.arguments;
  CustomDio dio = Get.find(tag: 'dio');

  List<Map<String, dynamic>> filteredCharacterList = [];
  int filteredCharacterListLength = 0;

  int getLength() {
    return filteredCharacterListLength;
  }

  List<Map<String, dynamic>> getFiltered(String filter) {
    if (filter.isEmpty) {
      return characterListFull;
    }
    for (var character in characterListFull) {
      if (((character['name'] as String).toLowerCase()).contains(filter.toLowerCase())) {
        filteredCharacterList.add(character);
      }
    }

    for (var pp in filteredCharacterList) {
      print(pp['name']); //isso eu fiz pra ver a lista filtrada
    }
    filteredCharacterListLength = filteredCharacterList.length;
    return filteredCharacterList;
  }
}
