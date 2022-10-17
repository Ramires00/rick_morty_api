import 'package:rick_morty_api/model/episode/episode.dart';

class ListEpisodes {
  ListEpisodes({
    List<Episode>? list,
  }) : _list = list;

  final List<Episode>? _list;

  factory ListEpisodes.fromJson(dynamic json) => ListEpisodes(
        list:
            json['results'].map<Episode>((ep) => Episode.fromJson(ep)).toList(),
      );

  List<Episode> get list => _list ?? [];
}
