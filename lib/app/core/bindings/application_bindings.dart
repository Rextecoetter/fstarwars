import 'package:fstarwars/app/core/ui/loader/loader.dart';
import 'package:fstarwars/app/custom_dio/custom_dio.dart';
import 'package:get/get.dart';

class ApplicationBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CustomDio(), tag: 'dio', permanent: true);
    Get.put(const Loader(), tag: 'loader');
  }
}
