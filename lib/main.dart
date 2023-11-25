import 'package:flutter/material.dart';
import 'package:hoyobox/page/container.dart';

void main() {
  runApp(const HoYoBoxApp());
}

class HoYoBoxApp extends StatelessWidget {
  const HoYoBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HoYoBoxContainer(title: 'Flutter Demo Home Page'),
    );
  }
}
