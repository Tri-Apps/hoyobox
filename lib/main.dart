import 'package:flutter/material.dart';
import 'package:hoyobox/app.dart';
import 'package:hoyobox/page/container.dart';
import 'package:flutter_gen/gen_l10n/hoyobox_localizations.dart';

void main() {
  // Initialize the app before showing the user interface.
  BoxApp.init();
  runApp(const AppEntryWidget());
}

class AppEntryWidget extends StatelessWidget {
  const AppEntryWidget({super.key});

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
      home: HoYoBoxContainer(),
    );
  }
}
