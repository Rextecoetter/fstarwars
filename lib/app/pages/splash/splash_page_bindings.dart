import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:fstarwars/app/pages/splash/splash_page_controller.dart';
import 'package:get/get.dart';

class SplashPageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(CustomDio());
    Get.put(SplashPageController());
  }
}
