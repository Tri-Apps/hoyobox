import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoYoBoxAnnouncementPage extends StatelessWidget {

  _listAnnouncement() async {
    // TODO
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _listAnnouncement(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                children: [

                ],
              ),
            );
          } else if (snapshot.hasError) {
            // TODO
          }
          return const CircularProgressIndicator();
        }
    );
  }



}