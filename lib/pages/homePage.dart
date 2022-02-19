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
            IntroductionWidget(),
            SubScreenDivider(
              text: 'In Shack Now',
            ),
            CAvatarsWidget(),
            Shack15Menus(),
            SubScreenDivider(
              text: 'Send a token of gratitude',
            ),
            TokenNotesWidget(),
            SubScreenDivider(
              text: 'Latest News',
            ),
            LastestNewsWidget(),
            SubScreenDivider(
              text: 'Rooms Available Now',
            ),
            AvailableSeatsWidget()
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
