import 'package:flutter/material.dart';
import 'package:hoyobox/page/genshin/characters.dart';
import 'package:hoyobox/page/genshin/home.dart';

import 'package:flutter_gen/gen_l10n/hoyobox_localizations.dart';

class HoYoBoxContainer extends StatefulWidget {

  HoYoBoxContainer({super.key});

  var state = _HoYoBoxGIHomePageState();

  @override
  State<HoYoBoxContainer> createState() => _HoYoBoxGIHomePageState();

}

class _HoYoBoxGIHomePageState extends State<HoYoBoxContainer> {

  var character = false;

  @override
  Widget build(BuildContext context) {
    final localiztion = AppLocalizations.of(context)!;
    final header = DrawerHeader(
      child: Text(
          localiztion.hoyobox_name,
        textAlign: TextAlign.center,
      ),
    );
    final drawerItems = ListView(
      children: [
        header,
        ListTile(
          title: Text(
            localiztion.hoyobox_drawer_home,
          ),
          leading: const Icon(Icons.favorite),
          onTap: () {
            setState(() {
              character = false;
            });
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            localiztion.hoyobox_drawer_gacha,
          ),
          leading: const Icon(Icons.comment),
          onTap: () {
            setState(() {
              character = true;
            });
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(localiztion.hoyobox_name),
      ),
      body: character ? const HoYoBoxGICharacterPage() : const HoYoBoxGIHomePage(),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}