import 'package:flutter/material.dart';

class HoYoBoxGIAnnouncementPage extends StatelessWidget {

  const HoYoBoxGIAnnouncementPage({super.key});

  _listAnnouncement() async {
    // TODO
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _listAnnouncement(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Center(
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