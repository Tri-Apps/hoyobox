import 'package:flutter/material.dart';
import 'package:hoyobox/page/container.dart';
import 'package:flutter_gen/gen_l10n/hoyobox_localizations.dart';

void main() {
  runApp(const HoYoBoxApp());
}

class HoYoBoxApp extends StatelessWidget {
  const HoYoBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HoYoBox',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HoYoBoxContainer(),
    );
  }
}
