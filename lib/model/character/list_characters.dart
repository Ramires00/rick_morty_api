import 'package:rick_morty_api/model/character/character.dart';

class ListCharacters {
  ListCharacters({
    List<Character>? list,
  }) : _list = list;

  final List<Character>? _list;

  factory ListCharacters.fromJson(dynamic json) => ListCharacters(
      list: json['results']
          .map<Character>((character) => Character.fromJson(character))
          .toList());

  List<Character> get list => _list ?? [];
}
