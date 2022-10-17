class Origin {
  Origin({String? name, String? url})
      : _name = name,
        _url = url;

  final String? _name;
  final String? _url;

  factory Origin.fromJson(Map<String, dynamic> json) => Origin(
        name: json['name'],
        url: json['url'],
      );

  String get name => _name ?? "";
  String get url => _url ?? "";
}
