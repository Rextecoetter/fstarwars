import 'package:flutter/material.dart';

class InicialPageCharacterWidget extends StatelessWidget {
  const InicialPageCharacterWidget({super.key, required this.name, required this.url});

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO ir para pagina de detalhes do personagem
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
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
