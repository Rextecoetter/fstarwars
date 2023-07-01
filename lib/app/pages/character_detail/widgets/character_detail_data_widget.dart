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
                        style: TextStyle(
                            fontFamily: 'DgalaxyOut',
                            color: Color(0XFF41A9AA),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Nome completo: ',
                        style: TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                      Text(
                        characterModel.name,
                        style: const TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Genero: ',
                        style: TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                      Text(
                        characterModel.gender,
                        style: const TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Ano de aniversário: ',
                        style: TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                      Text(
                        characterModel.birthYear,
                        style: const TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Nome do planeta: ',
                        style: TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                      Text(
                        characterModel.homeWorld.name,
                        style: const TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Terreno do planeta: ',
                        style: TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                      Text(
                        characterModel.homeWorld.terrain,
                        style: const TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Diametro do planeta: ',
                        style: TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                      Text(
                        characterModel.homeWorld.diameter,
                        style: const TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Nome da nave: ',
                        style: TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                      Text(
                        characterModel.starShip.name,
                        style: const TextStyle(
                          fontFamily: 'Dgalaxy',
                          color: Color(0XFF41A9AA),
                        ),
                      ),
                    ],
                  ),
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
