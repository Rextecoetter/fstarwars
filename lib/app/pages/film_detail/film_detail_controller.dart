import 'package:fstarwars/app/models/films_model.dart';
import 'package:get/get.dart';

class FilmDetailController extends GetxController with StateMixin<FilmsModel> {
  List<dynamic> args = Get.arguments;

  final nome = ''.obs;
  final filmsModel = Rxn<FilmsModel>();

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() {
    change(state, status: RxStatus.loading());
    nome.value = args[0];
    filmsModel.value = args[1];
    change(state, status: RxStatus.success());
  }
}
