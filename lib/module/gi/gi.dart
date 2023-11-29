import 'package:hoyobox/game/game.dart';

class GIGame extends Game {
  late String _displayName;

  @override
  String get displayName => _displayName;

  @override
  String get name => "genshin_impact";
  
  GIGame(String displayName) {
    _displayName = displayName;
  }
}