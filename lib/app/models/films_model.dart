import 'dart:convert';

class FilmsModel {
  final String title;
  final String director;
  final String releaseDate;
  final String producer;

  FilmsModel({
    required this.title,
    required this.director,
    required this.releaseDate,
    required this.producer,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'director': director,
      'release_date': releaseDate,
      'producer': producer,
    };
  }

  factory FilmsModel.fromMap(Map<String, dynamic> map) {
    return FilmsModel(
      title: map['title'] ?? '',
      director: map['director'] ?? '',
      releaseDate: map['release_date'] ?? '',
      producer: map['producer'] ?? '',
    );
  }

  String toJason() => jsonEncode(toMap());

  factory FilmsModel.fromJson(String source) => FilmsModel.fromMap(jsonDecode(source));
}
