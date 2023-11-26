import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/hoyobox_localizations.dart';
import 'package:hoyobox/data/genshin/character_data.dart';

class HoYoBoxGICharacterPage extends StatefulWidget {

  const HoYoBoxGICharacterPage({super.key});

  @override
  State<StatefulWidget> createState() => _HoYoBoxGICharacterPageState();

}

class _HoYoBoxGICharacterPageState extends State<HoYoBoxGICharacterPage> {

  _listCharacters() async {
    var httpClient = HttpClient();
    var uri = Uri(
      scheme: 'https',
      host: 'api.xunkong.cc',
      path: 'v1/genshindata/character'
    );
    var request = await httpClient.getUrl(uri);
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();
    var jsonBody = json.decode(responseBody);
    var characters = <CharacterData>[];
    for (var characterData in jsonBody['data']['list']) {
      characters.add(CharacterData.fromJson(characterData!));
    }
    return characters;
  }

  Widget _buildLine(List<CharacterData> characters) {
    var singleLineComponents = <Widget>[];
    for (var character in characters) {
      singleLineComponents.add(Expanded(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(character.faceIcon),
          Text(character.name)
        ],
      )));
    }
    return Row(
        children: singleLineComponents
    );
  }

  @override
  Widget build(BuildContext context) {
    final localiztion = AppLocalizations.of(context)!;
    return FutureBuilder(
        future: _listCharacters(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var datas = snapshot.data as List<CharacterData>;
            var componenets = <Widget>[];
            var lines = datas.length / 4;
            if (datas.length % 4 != 0) {
              lines += 1;
            }
            for (var i = 0; i < lines; i++) {
              if (i == lines - 1) {
                var restAmount = ((i + 1) * 4) - datas.length;
                if (restAmount == 0) {
                  var characters = [datas[(i * 4)], datas[(i * 4) + 1], datas[(i * 4) + 2], datas[(i * 4) + 3]];
                  componenets.add(_buildLine(characters));
                } else {
                  var characters = <CharacterData>[];
                  for (var j = 0; j < (4 - restAmount); j++) {
                    characters.add(datas[(i * 4) + j]);
                  }
                  var singleLineComponents = <Widget>[];
                  for (var character in characters) {
                    singleLineComponents.add(Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(character.faceIcon),
                        Text(character.name)
                      ],
                    )));
                  }
                  singleLineComponents.add(Expanded(flex: restAmount, child: const Spacer()));
                }
              } else {
                var characters = [datas[(i * 4)], datas[(i * 4) + 1], datas[(i * 4) + 2], datas[(i * 4) + 3]];
                componenets.add(_buildLine(characters));
              }
            }
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  children: componenets,
                ),
              ),
            );
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Center(
              child: Column(
                children: [
                  Text(localiztion.hoyobox_genshin_characters_cannotfetchcharacters)
                ],
              ),
            );
          }
          return const CircularProgressIndicator();
        }
    );
  }

}