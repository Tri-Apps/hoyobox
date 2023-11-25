import 'package:flutter/material.dart';
import 'package:hoyobox/page/home.dart';

import 'package:flutter_gen/gen_l10n/hoyobox_localizations.dart';

class HoYoBoxContainer extends StatefulWidget {
  const HoYoBoxContainer({super.key});

  @override
  State<HoYoBoxContainer> createState() => _HoYoBoxContainerState();
}

class _HoYoBoxContainerState extends State<HoYoBoxContainer> {

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
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            localiztion.hoyobox_drawer_gacha,
          ),
          leading: const Icon(Icons.comment),
          onTap: () {
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
      body: HoYoBoxHomePage(),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
