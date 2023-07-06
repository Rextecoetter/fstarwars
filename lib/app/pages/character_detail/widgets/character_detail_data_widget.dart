import 'package:flutter/material.dart';
import 'package:fstarwars/app/models/character_model.dart';
import 'package:get/get.dart';

import '../../../core/widgets/detail_item.dart';

class CharacterDetailDataWidget extends StatelessWidget {
  const CharacterDetailDataWidget({super.key, required this.characterModel});

  final CharacterModel characterModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0XFF41A9AA),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dados pessoais:',
                        style: TextStyle(
                            fontFamily: 'DgalaxyOut',
                            color: Color(0XFF41A9AA),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  DetailItem(title: 'Nome Completo:', content: characterModel.name),
                  DetailItem(title: 'Genero:', content: characterModel.gender),
                  DetailItem(title: 'Ano de Aniversário:', content: characterModel.birthYear),
                  DetailItem(title: 'Nome do Planeta:', content: characterModel.homeWorld.name),
                  DetailItem(title: 'Terreno do Planeta:', content: characterModel.homeWorld.terrain),
                  DetailItem(title: 'Diametro do Planeta:', content: characterModel.homeWorld.diameter),
                  DetailItem(title: 'Nome da Nave:', content: characterModel.starShip.name),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Filmes:',
                        style: TextStyle(
                            fontFamily: 'DgalaxyOut',
                            color: Color(0XFF41A9AA),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .3,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(height: 20),
                      itemCount: characterModel.films.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () =>
                              Get.toNamed('/film', arguments: [characterModel.name, characterModel.films[index]]),
                          child: Text(
                            characterModel.films[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 10,
                              decorationStyle: TextDecorationStyle.wavy,
                              fontFamily: 'Dgalaxy',
                              color: Color(0XFF41A9AA),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}