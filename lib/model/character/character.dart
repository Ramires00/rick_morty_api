import 'package:rick_morty_api/model/character/location.dart';
import 'package:rick_morty_api/model/character/origin.dart';

class Character {
  Character({
    int? id,
    String? name,
    String? species,
    String? type,
    String? gender,
    Origin? origin,
    Location? location,
    String? image,
    List<String>? episodes,
    String? url,
  })  : _id = id,
        _name = name,
        _species = species,
        _type = type,
        _gender = gender,
        _origin = origin,
        _location = location,
        _image = image,
        _episodes = episodes,
        _url = url;

  final int? _id;
  final String? _name;
  final String? _species;
  final String? _type;
  final String? _gender;
  final Origin? _origin;
  final Location? _location;
  final String? _image;
  final List<String>? _episodes;
  final String? _url;

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json['id'],
        name: json['name'],
        species: json['species'],
        type: json['type'],
        gender: json['gender'],
        origin: Origin.fromJson(json['origin']),
        location: Location.fromJson(json['location']),
        image: json['image'],
        episodes: json['episodes'],
        url: json['url'],
      );

  int get id => _id ?? 0;

  String get name => _name ?? "";

  String get species => _species ?? "";

  String get type => _type ?? "";

  String get gender => _gender ?? "";

  Origin get origin => _origin ?? Origin();

  Location get location => _location ?? Location();

  String get image => _image ?? "";

  List<String> get episodes => _episodes ?? [];

  String get url => _url ?? "";
}
