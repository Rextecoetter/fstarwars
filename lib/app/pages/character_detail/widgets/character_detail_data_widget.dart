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
                        style: TextStyle(
                            fontFamily: 'DgalaxyOut',
                            color: Color(0XFF41A9AA),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const AutoSizeText(
                              'Nome completo:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Dgalaxy',
                                color: Color(0XFF41A9AA),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            child: Flexible(
                              child: AutoSizeText(
                                characterModel.name,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const Text(
                              'Genero: ',
                              style: TextStyle(
                                fontFamily: 'Dgalaxy',
                                color: Color(0XFF41A9AA),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            characterModel.gender,
                            style: const TextStyle(
                              fontFamily: 'Dgalaxy',
                              color: Color(0XFF41A9AA),
                            ),
                          ),
                        ],
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
                  // RichText(
                  //   text: const TextSpan(
                  //     children: [
                  //       TextSpan(
                  //         text: 'Texto com estilo 1',
                  //         style: TextStyle(
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //       TextSpan(
                  //         text:
                  //             'Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2Texto com estilo 2',
                  //         style: TextStyle(
                  //           fontSize: 14,
                  //           fontStyle: FontStyle.italic,
                  //           color: Colors.blue,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     const Text(
                  //       'Terreno do planeta: ',
                  //       style: TextStyle(
                  //         fontFamily: 'Dgalaxy',
                  //         color: Color(0XFF41A9AA),
                  //       ),
                  //     ),
                  //     Flexible(
                  //       child: Text('Terreno do planeta: {$characterModel.homeWorld.terrain}',
                  //         maxLines: 5,
                  //         style: const TextStyle(
                  //           fontFamily: 'Dgalaxy',
                  //           color: Color(0XFF41A9AA),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'Terreno do planeta: ${characterModel.homeWorld.terrain}',
                          maxLines: 5,
                          style: const TextStyle(
                            fontFamily: 'Dgalaxy',
                            color: Color(0XFF41A9AA),
                          ),
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
