import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:hoyobox/managers/account_manager.dart';

class BoxApp {
  static bool _initialized = false;
  static late BoxApp instance;

  late String platformName;
  late String locale;
  late AccountManager accountManager;

  static init() {
  
    if (_initialized) {
      return;
    }

    instance = BoxApp();
    _initialized = true;
  }

  BoxApp() {
    platformName = kIsWeb ? "web" : Platform.operatingSystem;
    accountManager = AccountManager();
  }
}