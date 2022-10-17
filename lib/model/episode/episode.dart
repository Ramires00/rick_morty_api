class Episode {
  Episode({
    int? id,
    String? name,
    String? airDate,
    String? episode,
    List? characters,
    String? url,
  })  : _id = id,
        _name = name,
        _airDate = airDate,
        _episode = episode,
        _characters = characters,
        _url = url;

  final int? _id;
  final String? _name;
  final String? _airDate;
  final String? _episode;
  final List? _characters;
  final String? _url;

  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json["id"],
        name: json["name"],
        airDate: json["air_date"],
        episode: json["episode"],
        characters: json["characters"],
        url: json["url"],
      );

  int get id => _id ?? 0;

  String get name => _name ?? "";

  String get url => _url ?? "";

  List get characters => _characters ?? [];

  String get episode => _episode ?? "";

  String get airDate => _airDate ?? "";
}
