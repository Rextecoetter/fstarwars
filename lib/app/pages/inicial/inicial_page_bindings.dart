import 'package:fstarwars/app/pages/inicial/inicial_page_controller.dart';
import 'package:get/get.dart';

class InicialPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(InicialPageController());
  }
}
