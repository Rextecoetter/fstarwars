import 'package:flutter/material.dart';
import 'package:fstarwars/app/models/films_model.dart';
import 'package:fstarwars/app/pages/film_detail/film_detail_controller.dart';
import 'package:fstarwars/app/pages/film_detail/widgets/film_detail_widget.dart';
import 'package:get/get.dart';

import '../../core/ui/loader/loader.dart';

class FilmDetailPage extends GetView<FilmDetailController> {
  const FilmDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Scaffold(
        backgroundColor: const Color(0XFFfdfcd5),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0XFFfdfcd5),
          title: Obx(
            () => Text(
              controller.nome.value,
              style: const TextStyle(
                fontFamily: 'DGalaxyOut',
                color: Color(0XFF41A9AA),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
        body: Obx(() => FilmDetailWidget(film: controller.filmsModel.value!)),
      ),
      onLoading: Scaffold(
        backgroundColor: const Color(0XFFfdfcd5),
        appBar: AppBar(
          backgroundColor: const Color(0XFFfdfcd5),
          title: const Text(''),
        ),
        body: const Loader(),
      ),
    );
  }
}
