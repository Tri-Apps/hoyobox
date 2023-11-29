import 'package:hoyobox/user/account_type.dart';

class Account {

  late AccountType _accountType;
  late int _id;
  late String _token;

  AccountType get type => _accountType;
  int get id => _id;
  String get token => _token;

  Account(AccountType type, int id, String token) {
    _accountType = type;
    _id = id;
    _token = token;
  }

  bool isMiyoushe() {
    return _accountType == AccountType.miyoushe;
  }

    bool isHoYoVerse() {
    return _accountType == AccountType.hoyoverse;
  }
}