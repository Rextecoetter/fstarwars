import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:get/get.dart';

class InicialPageController extends GetxController {
  List<Map<String, dynamic>> args = Get.arguments;
  CustomDio dio = Get.find(tag: 'dio');

  @override
  void onInit() {
    
    // TODO: implement onInit
    super.onInit();
  }
}
