import 'package:fstarwars/app/pages/film_detail/film_detail_controller.dart';
import 'package:get/get.dart';

class FilmDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(FilmDetailController());
  }
}
