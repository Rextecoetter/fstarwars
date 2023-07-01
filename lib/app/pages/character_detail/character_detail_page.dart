import 'package:flutter/material.dart';
import 'package:fstarwars/app/core/ui/loader/loader.dart';
import 'package:fstarwars/app/pages/character_detail/character_detail_controller.dart';
import 'package:get/get.dart';

class CharacterDetailPage extends GetView<CharacterDetailController> {
  const CharacterDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Scaffold(
        backgroundColor: const Color(0XFFfdfcd5),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0XFFfdfcd5),
            title: Obx(() {
              return Text(
                controller.characterModel.value!.name,
                style: const TextStyle(
                  fontFamily: 'DGalaxyOut',
                  color: Color(0XFF41A9AA),
                  fontWeight: FontWeight.w600,
                ),
              );
            })),
        body: Container(),
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
