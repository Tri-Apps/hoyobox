class CharacterData {

  const CharacterData({
    required this.name,
    required this.faceIcon
  });

  final String name;
  final String faceIcon;

  static CharacterData fromJson(dynamic json) {
    return CharacterData(name: json['name'], faceIcon: json['faceIcon']);
  }

}