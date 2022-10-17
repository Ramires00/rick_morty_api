class Location {
  Location({String? name, String? url})
      : _name = name,
        _url = url;

  final String? _name;
  final String? _url;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json['name'],
        url: json['url'],
      );

  String get name => _name ?? "";
  String get url => _url ?? "";
}
