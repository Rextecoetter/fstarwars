import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fstarwars/app/models/character_model.dart';

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
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0XFF41A9AA),
                width: 5,
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
                        'Dados:',
                        style: TextStyle(fontFamily: 'DgalaxyOut', color: Color(0XFF41A9AA), fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  DetailItem(title: 'Nome Completo:', content: characterModel.name),
                  DetailItem(title: 'Genero:', content: characterModel.gender),
                  DetailItem(title: 'Ano de Aniversário', content: characterModel.birthYear),
                  DetailItem(title: 'Nome do Planeta', content: characterModel.homeWorld.name),
                  DetailItem(title: 'Terreno do Planeta', content: characterModel.homeWorld.terrain),
                  DetailItem(title: 'Diametro do Planeta', content: characterModel.homeWorld.diameter),
                  DetailItem(title: 'Nome da Nave', content: characterModel.starShip.name),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Filmes:',
                        style: TextStyle(fontFamily: 'DgalaxyOut', color: Color(0XFF41A9AA), fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: AutoSizeText(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'Dgalaxy',
                    color: Color(0XFF41A9AA),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              SizedBox(
                child: Flexible(
                  child: AutoSizeText(
                    content,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: const TextStyle(
                      fontFamily: 'Dgalaxy',
                      color: Color(0XFF41A9AA),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
