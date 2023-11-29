import 'dart:io';

import 'package:hoyobox/managers/account_manager.dart';

class BoxApp {
  static late BoxApp instance;

  late String platformName;
  late String locale;
  late AccountManager accountManager;

  static init() {
    instance = BoxApp();
  }

  BoxApp() {
    platformName = Platform.operatingSystem;
    accountManager = AccountManager();
  }
}