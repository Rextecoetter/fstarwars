import 'package:flutter/material.dart';
import 'package:fstarwars/app/models/pre_character_model.dart';
import 'package:get/get.dart';

class InicialPageCharacterWidget extends StatelessWidget {
  const InicialPageCharacterWidget({super.key, required this.preCharacterModel});

  final PreCharacterModel preCharacterModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       Get.toNamed('/character', arguments: preCharacterModel);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              preCharacterModel.name,
              style: const TextStyle(
                fontFamily: 'DGalaxy',
                color: Color(0XFF41A9AA),
              ),
            ),
            const Text(
              '>',
              style: TextStyle(
                fontFamily: 'DGalaxyOut',
                color: Color(0XFF41A9AA),
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
