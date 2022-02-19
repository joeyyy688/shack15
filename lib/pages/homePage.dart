// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/widgets/appBar.dart';
import 'package:shack15/widgets/availableSeatsWidget.dart';
import 'package:shack15/widgets/bottomNavBarWidget.dart';
import 'package:shack15/widgets/cAvatarWidget.dart';
import 'package:shack15/widgets/introductionImage.dart';
import 'package:shack15/widgets/latestNewsWidget.dart';
import 'package:shack15/widgets/menuWidget.dart';
import 'package:shack15/widgets/subScreenDivider.dart';
import 'package:shack15/widgets/tokenNotesWidget.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const HomePageAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            IntroductionWidget(
              key: Key('introWidget'),
            ),
            SubScreenDivider(
              key: Key('subScreenDivider'),
              text: 'In Shack Now',
            ),
            CAvatarsWidget(
              key: Key('cavatars'),
            ),
            Shack15Menus(
              key: Key('menus'),
            ),
            SubScreenDivider(
              text: 'Send a token of gratitude',
            ),
            TokenNotesWidget(
              key: Key('tokenNotes'),
            ),
            SubScreenDivider(
              text: 'Latest News',
            ),
            LatestNewsWidget(
              key: Key('latestNews'),
            ),
            SubScreenDivider(
              text: 'Rooms Available Now',
            ),
            AvailableSeatsWidget(
              key: Key('availableSeats'),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(
        key: Key('bottomNavBar'),
      ),
    );
  }
}
