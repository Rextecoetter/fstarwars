import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({super.key, required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '$title $content',
                style: const TextStyle(
                  fontFamily: 'Dgalaxy',
                  color: Color(0XFF41A9AA),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
