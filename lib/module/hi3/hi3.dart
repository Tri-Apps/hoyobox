import 'package:hoyobox/game/game.dart';

class Hi3Game extends Game {

  late String _displayName;
    
  @override
  String get displayName => _displayName;
  
  @override
  String get name => throw "honkai_star_rail";

  Hi3Game(String displayName) {
    _displayName = displayName;
  }

}