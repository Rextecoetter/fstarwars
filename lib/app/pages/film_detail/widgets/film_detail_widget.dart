import 'package:flutter/material.dart';
import 'package:fstarwars/app/core/widgets/detail_item.dart';
import 'package:fstarwars/app/models/films_model.dart';

class FilmDetailWidget extends StatelessWidget {
  const FilmDetailWidget({super.key, required this.film});

  final FilmsModel film;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Detalhes do Filme',
                style: TextStyle(
                  fontFamily: 'DgalaxyOut',
                  color: Color(0XFF41A9AA),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0XFF41A9AA),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                DetailItem(title: 'Titulo do Filme:', content: film.title),
                DetailItem(title: 'Diretor:', content: film.director),
                DetailItem(title: 'Data de lancamento:', content: film.releaseDate),
                DetailItem(title: 'Produtores:', content: film.producer),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
