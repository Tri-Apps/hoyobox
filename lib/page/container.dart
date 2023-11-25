import 'package:flutter/material.dart';
import 'package:hoyobox/page/home.dart';

class HoYoBoxContainer extends StatefulWidget {
  const HoYoBoxContainer({super.key, required this.title});

  final String title;

  @override
  State<HoYoBoxContainer> createState() => _HoYoBoxContainerState();
}

class _HoYoBoxContainerState extends State<HoYoBoxContainer> {

  @override
  Widget build(BuildContext context) {
    final header = DrawerHeader(
      child: Text('HoYoBox'),
    );
    final drawerItems = ListView(
      children: [
        header,
        ListTile(
          title: Text(
            'Home',
          ),
          leading: const Icon(Icons.favorite),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            'Gacha Analysis',
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
        title: Text(widget.title),
      ),
      body: HoYoBoxHomePage(),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
