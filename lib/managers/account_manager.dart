import 'package:hoyobox/user/account.dart';

class AccountManager {
  late Map<String, Account> _accountIdMap;

  AccountManager() {
    _accountIdMap = {};
  }

  Account getAccountById(String id) {
    return _accountIdMap[id]!;
  }
}