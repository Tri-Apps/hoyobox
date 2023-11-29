import 'package:hoyobox/game/game.dart';

class HSRGame extends Game {
  late String _displayName;
    
  @override
  String get displayName => _displayName;
  
  @override
  String get name => throw "honkai_star_rail";

  HSRGame(String displayName) {
    _displayName = displayName;
  }
}