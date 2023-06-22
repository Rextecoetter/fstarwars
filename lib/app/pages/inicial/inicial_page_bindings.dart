import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/pages/inicial/inicial_page_controller.dart';
import 'package:get/get.dart';

class InicialPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CustomDio(), tag: 'dio');
    Get.put(InicialPageController());
  }
}
